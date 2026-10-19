###### Class com.google.zxing.datamatrix.decoder.Version (com.google.zxing.datamatrix.decoder.Version)
.class public final Lcom/google/zxing/datamatrix/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/Version$b;,
        Lcom/google/zxing/datamatrix/decoder/Version$c;
    }
.end annotation


# static fields
.field private static final a:[Lcom/google/zxing/datamatrix/decoder/Version;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/zxing/datamatrix/decoder/Version$c;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/zxing/datamatrix/decoder/Version;->a()[Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->a:[Lcom/google/zxing/datamatrix/decoder/Version;

    return-void
.end method

.method private constructor <init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version;->b:I

    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version;->c:I

    iput p3, p0, Lcom/google/zxing/datamatrix/decoder/Version;->d:I

    iput p4, p0, Lcom/google/zxing/datamatrix/decoder/Version;->e:I

    iput p5, p0, Lcom/google/zxing/datamatrix/decoder/Version;->f:I

    iput-object p6, p0, Lcom/google/zxing/datamatrix/decoder/Version;->g:Lcom/google/zxing/datamatrix/decoder/Version$c;

    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$c;->b()I

    move-result p1

    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$c;->a()[Lcom/google/zxing/datamatrix/decoder/Version$b;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_1a
    if-ge p4, p3, :cond_2d

    aget-object p6, p2, p4

    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$b;->a()I

    move-result v0

    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$b;->b()I

    move-result p6

    add-int/2addr p6, p1

    mul-int v0, v0, p6

    add-int/2addr p5, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_1a

    :cond_2d
    iput p5, p0, Lcom/google/zxing/datamatrix/decoder/Version;->h:I

    return-void
.end method

.method private static a()[Lcom/google/zxing/datamatrix/decoder/Version;
    .registers 41

    const/16 v0, 0x30

    new-array v1, v0, [Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v8, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/4 v10, 0x1

    const/4 v3, 0x3

    const/4 v11, 0x0

    invoke-direct {v2, v10, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v12, 0x5

    invoke-direct {v8, v12, v2, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v4, v10, v12, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v5, 0x7

    invoke-direct {v3, v5, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v14, 0x2

    const/16 v15, 0xc

    const/16 v16, 0xc

    const/16 v17, 0xa

    const/16 v18, 0xa

    move-object v13, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v4, v10, v6, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v7, 0xa

    invoke-direct {v3, v7, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v20, 0x3

    const/16 v21, 0xe

    const/16 v22, 0xe

    const/16 v23, 0xc

    const/16 v24, 0xc

    move-object/from16 v19, v2

    move-object/from16 v25, v3

    invoke-direct/range {v19 .. v25}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v8, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v9, 0xc

    invoke-direct {v8, v10, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v4, v9, v8, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v14, 0x4

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, 0xe

    const/16 v18, 0xe

    move-object v13, v2

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v8, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v15, 0x12

    invoke-direct {v8, v10, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v14, 0xe

    invoke-direct {v4, v14, v8, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v8, 0x5

    const/16 v16, 0x12

    const/16 v17, 0x12

    const/16 v18, 0x10

    const/16 v19, 0x10

    move-object v13, v2

    move v14, v8

    const/16 v8, 0x12

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v14, 0x16

    invoke-direct {v13, v10, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v15, v8, v13, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v16, 0x6

    const/16 v17, 0x14

    const/16 v18, 0x14

    const/16 v19, 0x12

    const/16 v20, 0x12

    move-object v13, v2

    move/from16 v14, v16

    move-object/from16 v21, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, v21

    invoke-direct/range {v13 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v15, 0x1e

    invoke-direct {v14, v10, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v15, 0x14

    invoke-direct {v13, v15, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x7

    const/16 v30, 0x16

    const/16 v31, 0x16

    const/16 v32, 0x14

    const/16 v33, 0x14

    move-object/from16 v28, v2

    move-object/from16 v34, v13

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/4 v13, 0x6

    aput-object v2, v1, v13

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v12, 0x24

    invoke-direct {v14, v10, v12, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x18

    invoke-direct {v15, v13, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v16, 0x8

    const/16 v17, 0x18

    const/16 v18, 0x18

    const/16 v19, 0x16

    const/16 v20, 0x16

    move-object v14, v2

    move-object/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v13, 0x2c

    invoke-direct {v15, v10, v13, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x1c

    invoke-direct {v14, v13, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x9

    const/16 v30, 0x1a

    const/16 v31, 0x1a

    const/16 v32, 0x18

    const/16 v33, 0x18

    move-object/from16 v28, v2

    move-object/from16 v34, v14

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v13, 0x3e

    invoke-direct {v15, v10, v13, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v14, v12, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v35, 0xa

    const/16 v36, 0x20

    const/16 v37, 0x20

    const/16 v38, 0xe

    const/16 v39, 0xe

    move-object/from16 v34, v2

    move-object/from16 v40, v14

    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v14, 0x9

    aput-object v2, v1, v14

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x56

    invoke-direct {v15, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x2a

    invoke-direct {v14, v5, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0xb

    const/16 v30, 0x24

    const/16 v31, 0x24

    const/16 v32, 0x10

    const/16 v33, 0x10

    move-object/from16 v28, v2

    move-object/from16 v34, v14

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v7, 0x72

    invoke-direct {v15, v10, v7, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v14, v0, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v35, 0xc

    const/16 v36, 0x28

    const/16 v37, 0x28

    const/16 v38, 0x12

    const/16 v39, 0x12

    move-object/from16 v34, v2

    move-object/from16 v40, v14

    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v7, 0xb

    aput-object v2, v1, v7

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v7, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v15, 0x90

    invoke-direct {v14, v10, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v15, 0x38

    invoke-direct {v7, v15, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0xd

    const/16 v30, 0x2c

    const/16 v31, 0x2c

    const/16 v32, 0x14

    const/16 v33, 0x14

    move-object/from16 v28, v2

    move-object/from16 v34, v7

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v7, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v14, 0xae

    invoke-direct {v9, v10, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v14, 0x44

    invoke-direct {v7, v14, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v35, 0xe

    const/16 v36, 0x30

    const/16 v37, 0x30

    const/16 v38, 0x16

    const/16 v39, 0x16

    move-object/from16 v34, v2

    move-object/from16 v40, v7

    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v7, 0xd

    aput-object v2, v1, v7

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v7, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v14, 0x66

    invoke-direct {v9, v3, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v7, v5, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0xf

    const/16 v30, 0x34

    const/16 v31, 0x34

    const/16 v32, 0x18

    const/16 v33, 0x18

    move-object/from16 v28, v2

    move-object/from16 v34, v7

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v7, 0xe

    aput-object v2, v1, v7

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x8c

    invoke-direct {v14, v3, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v9, v15, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x10

    const/16 v30, 0x40

    const/16 v31, 0x40

    const/16 v32, 0xe

    const/16 v33, 0xe

    move-object/from16 v28, v2

    move-object/from16 v34, v9

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v5, 0xf

    aput-object v2, v1, v5

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v5, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v14, 0x5c

    invoke-direct {v9, v4, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v5, v12, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x11

    const/16 v30, 0x48

    const/16 v31, 0x48

    const/16 v32, 0x10

    const/16 v33, 0x10

    move-object/from16 v28, v2

    move-object/from16 v34, v5

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v5, 0x10

    aput-object v2, v1, v5

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v5, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v14, 0x72

    invoke-direct {v9, v4, v14, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v5, v0, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x12

    const/16 v30, 0x50

    const/16 v31, 0x50

    const/16 v32, 0x12

    const/16 v33, 0x12

    move-object/from16 v28, v2

    move-object/from16 v34, v5

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v0, 0x11

    aput-object v2, v1, v0

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v5, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v9, 0x90

    invoke-direct {v5, v4, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v15, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x13

    const/16 v30, 0x58

    const/16 v31, 0x58

    const/16 v32, 0x14

    const/16 v33, 0x14

    move-object/from16 v28, v0

    move-object/from16 v34, v2

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v0, v1, v8

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v5, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v9, 0xae

    invoke-direct {v5, v4, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v4, 0x44

    invoke-direct {v2, v4, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v35, 0x14

    const/16 v36, 0x60

    const/16 v37, 0x60

    move-object/from16 v34, v0

    move-object/from16 v40, v2

    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x88

    const/4 v9, 0x6

    invoke-direct {v4, v9, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v15, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x15

    const/16 v30, 0x68

    const/16 v31, 0x68

    const/16 v32, 0x18

    const/16 v33, 0x18

    move-object/from16 v28, v0

    move-object/from16 v34, v2

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0xaf

    const/4 v9, 0x6

    invoke-direct {v4, v9, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x44

    invoke-direct {v2, v5, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x16

    const/16 v30, 0x78

    const/16 v31, 0x78

    const/16 v32, 0x12

    const/16 v33, 0x12

    move-object/from16 v28, v0

    move-object/from16 v34, v2

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0xa3

    invoke-direct {v4, v6, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v13, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v29, 0x17

    const/16 v30, 0x84

    const/16 v31, 0x84

    const/16 v32, 0x14

    const/16 v33, 0x14

    move-object/from16 v28, v0

    move-object/from16 v34, v2

    invoke-direct/range {v28 .. v34}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x16

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v5, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v9, 0x9c

    invoke-direct {v5, v6, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v9, 0x9b

    invoke-direct {v6, v3, v9, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v4, v13, v5, v6, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v23, 0x18

    const/16 v24, 0x90

    const/16 v25, 0x90

    const/16 v26, 0x16

    const/16 v27, 0x16

    move-object/from16 v22, v0

    move-object/from16 v28, v4

    invoke-direct/range {v22 .. v28}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/4 v5, 0x5

    invoke-direct {v4, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/4 v5, 0x7

    invoke-direct {v3, v5, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v23, 0x19

    const/16 v24, 0x8

    const/16 v25, 0x12

    const/16 v26, 0x6

    const/16 v27, 0x10

    move-object/from16 v22, v0

    move-object/from16 v28, v3

    invoke-direct/range {v22 .. v28}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0xa

    invoke-direct {v4, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0xb

    invoke-direct {v3, v5, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x1a

    const/16 v23, 0x8

    const/16 v24, 0x20

    const/16 v25, 0x6

    const/16 v26, 0xe

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x19

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x10

    invoke-direct {v4, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v3, v7, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x1b

    const/16 v23, 0xc

    const/16 v24, 0x1a

    const/16 v25, 0xa

    const/16 v26, 0x18

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v4, v10, v2, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v3, v8, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x1c

    const/16 v24, 0x24

    const/16 v26, 0x10

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x20

    invoke-direct {v4, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v6, 0x18

    invoke-direct {v3, v6, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x1d

    const/16 v23, 0x10

    const/16 v25, 0xe

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v7, 0x31

    invoke-direct {v6, v10, v7, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v4, v3, v6, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x1e

    const/16 v24, 0x30

    const/16 v26, 0x16

    move-object/from16 v21, v0

    move-object/from16 v27, v4

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v4, v10, v8, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v6, 0xf

    invoke-direct {v3, v6, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x1f

    const/16 v23, 0x8

    const/16 v25, 0x6

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x1e

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v6, 0x18

    invoke-direct {v4, v10, v6, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v3, v8, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x20

    const/16 v24, 0x40

    const/16 v26, 0xe

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v3, 0x1f

    aput-object v0, v1, v3

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v4, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v4, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v3, v2, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x21

    const/16 v24, 0x50

    const/16 v26, 0x12

    move-object/from16 v21, v0

    move-object/from16 v27, v3

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v0, v1, v5

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v4, 0x26

    invoke-direct {v3, v10, v4, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v28, 0x22

    const/16 v29, 0x8

    const/16 v30, 0x60

    const/16 v31, 0x6

    const/16 v32, 0x16

    move-object/from16 v27, v0

    move-object/from16 v33, v2

    invoke-direct/range {v27 .. v33}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x21

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v6, 0x31

    invoke-direct {v3, v10, v6, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x23

    const/16 v24, 0x78

    move-object/from16 v21, v0

    move-object/from16 v27, v2

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x22

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x3f

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v12, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x24

    const/16 v24, 0x90

    const/16 v26, 0x16

    move-object/from16 v21, v0

    move-object/from16 v27, v2

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x23

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x2b

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x1b

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x25

    const/16 v23, 0xc

    const/16 v24, 0x40

    const/16 v25, 0xa

    const/16 v26, 0xe

    move-object/from16 v21, v0

    move-object/from16 v27, v2

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v0, v1, v12

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x40

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v12, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v28, 0x26

    const/16 v29, 0xc

    const/16 v30, 0x58

    const/16 v31, 0xa

    const/16 v32, 0x14

    move-object/from16 v27, v0

    move-object/from16 v33, v2

    invoke-direct/range {v27 .. v33}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x25

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v3, v10, v13, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v12, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x27

    const/16 v23, 0x10

    const/16 v25, 0xe

    move-object/from16 v21, v0

    move-object/from16 v27, v2

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    aput-object v0, v1, v4

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x2c

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x1c

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v28, 0x28

    const/16 v29, 0x14

    const/16 v30, 0x24

    const/16 v31, 0x12

    const/16 v32, 0x10

    move-object/from16 v27, v0

    move-object/from16 v33, v2

    invoke-direct/range {v27 .. v33}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x27

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    invoke-direct {v3, v10, v15, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x22

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v22, 0x29

    const/16 v23, 0x14

    const/16 v24, 0x2c

    const/16 v25, 0x12

    const/16 v26, 0x14

    move-object/from16 v21, v0

    move-object/from16 v27, v2

    invoke-direct/range {v21 .. v27}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x28

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x54

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x2a

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x2a

    const/16 v14, 0x14

    const/16 v15, 0x40

    const/16 v16, 0x12

    const/16 v17, 0xe

    move-object v12, v0

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x29

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x48

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v4, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x2b

    const/16 v14, 0x16

    const/16 v15, 0x30

    const/16 v16, 0x14

    const/16 v17, 0x16

    move-object v12, v0

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x50

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x29

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x2c

    const/16 v14, 0x18

    const/16 v16, 0x16

    move-object v12, v0

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x6c

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v5, 0x2e

    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x2d

    const/16 v15, 0x40

    const/16 v17, 0xe

    move-object v12, v0

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v5, 0x46

    invoke-direct {v3, v10, v5, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    invoke-direct {v2, v4, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v13, 0x2e

    const/16 v14, 0x1a

    const/16 v15, 0x28

    const/16 v16, 0x18

    const/16 v17, 0x12

    move-object v12, v0

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v3, 0x5a

    invoke-direct {v2, v10, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v3, 0x2a

    invoke-direct {v9, v3, v2, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v4, 0x2f

    const/16 v5, 0x1a

    const/16 v6, 0x30

    const/16 v7, 0x18

    const/16 v8, 0x16

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version$c;

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/16 v3, 0x76

    invoke-direct {v2, v10, v3, v11}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v3, 0x32

    invoke-direct {v9, v3, v2, v11}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V

    const/16 v4, 0x30

    const/16 v6, 0x40

    const/16 v8, 0xe

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$c;)V

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_21

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_21

    sget-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->a:[Lcom/google/zxing/datamatrix/decoder/Version;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/zxing/datamatrix/decoder/Version;->c:I

    if-ne v4, p0, :cond_19

    iget v4, v3, Lcom/google/zxing/datamatrix/decoder/Version;->d:I

    if-ne v4, p1, :cond_19

    return-object v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_21
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.zxing.datamatrix.decoder.Version.a (com.google.zxing.datamatrix.decoder.Version$a)
.class synthetic Lcom/google/zxing/datamatrix/decoder/Version$a;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.zxing.datamatrix.decoder.Version.b (com.google.zxing.datamatrix.decoder.Version$b)
.class final Lcom/google/zxing/datamatrix/decoder/Version$b;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->a:I

    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(II)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->a:I

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->b:I

    return v0
.end method

###### Class com.google.zxing.datamatrix.decoder.Version.c (com.google.zxing.datamatrix.decoder.Version$c)
.class final Lcom/google/zxing/datamatrix/decoder/Version$c;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/datamatrix/decoder/Version$b;


# direct methods
.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/datamatrix/decoder/Version$b;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/decoder/Version$c;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$b;Lcom/google/zxing/datamatrix/decoder/Version$b;)V

    return-void
.end method


# virtual methods
.method a()[Lcom/google/zxing/datamatrix/decoder/Version$b;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    return-object v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    return v0
.end method
