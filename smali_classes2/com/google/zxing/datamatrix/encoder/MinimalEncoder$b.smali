###### Class com.google.zxing.datamatrix.encoder.MinimalEncoder.b (com.google.zxing.datamatrix.encoder.MinimalEncoder$b)
.class final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private final d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

.field private final e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field private final f:I

.field private final g:I

.field private final h:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->a:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->b:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->c:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0xc
        0x10
        0x12
        0x16
        0x1e
        0x20
        0x24
        0x2c
        0x31
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    :array_58
    .array-data 4
        0x3
        0x5
        0x8
        0xc
        0x12
        0x16
        0x1e
        0x24
        0x2c
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    :array_8c
    .array-data 4
        0x5
        0xa
        0x10
        0x21
        0x20
        0x31
    .end array-data
.end method

.method private constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    iput-object p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    const/4 p4, 0x0

    if-eqz p5, :cond_13

    iget p5, p5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i:I

    goto :goto_14

    :cond_13
    const/4 p5, 0x0

    :goto_14
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->t()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_bc

    goto/16 :goto_b9

    :pswitch_25
    add-int/lit8 p5, p5, 0x3

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_40

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, p1, :cond_30

    goto :goto_40

    :cond_30
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_3c

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_3c

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, p1, :cond_b9

    :cond_3c
    :goto_3c
    add-int/lit8 p5, p5, 0x2

    goto/16 :goto_b9

    :cond_40
    :goto_40
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_b9

    :pswitch_44
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne p2, v1, :cond_4b

    add-int/lit8 p5, p5, 0x2

    goto :goto_5a

    :cond_4b
    const/4 v2, 0x1

    new-array v3, v2, [I

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne p2, v4, :cond_53

    const/4 p4, 0x1

    :cond_53
    invoke-static {p1, p3, p4, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->i(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;IZ[I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p5, p1

    :goto_5a
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_40

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, p1, :cond_63

    goto :goto_40

    :cond_63
    if-eq v0, p2, :cond_b9

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_3c

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_3c

    if-ne v0, v1, :cond_b9

    goto :goto_93

    :pswitch_70
    add-int/lit8 p5, p5, 0x1

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_79

    :goto_76
    add-int/lit8 p5, p5, 0x1

    goto :goto_82

    :cond_79
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g()I

    move-result p1

    const/16 p2, 0xfa

    if-ne p1, p2, :cond_82

    goto :goto_76

    :cond_82
    :goto_82
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, p1, :cond_87

    goto :goto_40

    :cond_87
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_3c

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_3c

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, p1, :cond_b9

    :goto_93
    goto :goto_3c

    :pswitch_94
    add-int/lit8 p5, p5, 0x1

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/g;->a(I)Z

    move-result p2

    if-nez p2, :cond_aa

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result p2

    invoke-virtual {p1}, Lcom/google/zxing/common/g;->f()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result p1

    if-eqz p1, :cond_ac

    :cond_aa
    add-int/lit8 p5, p5, 0x1

    :cond_ac
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_40

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, p1, :cond_40

    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, p1, :cond_b9

    goto :goto_40

    :cond_b9
    :goto_b9
    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i:I

    return-void

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_94
        :pswitch_70
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_25
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    return p0
.end method

.method static synthetic b(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object p0
.end method

.method static synthetic d(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    return-object p0
.end method

.method static synthetic e(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    return p0
.end method

.method static synthetic f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i:I

    return p0
.end method

.method static h(I)[B
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static i(II)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    int-to-byte p0, p1

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static j(ZICI)I
    .registers 13

    if-ne p2, p3, :cond_5

    const/16 p0, 0x1b

    return p0

    :cond_5
    const/16 p3, 0x7f

    const/16 v0, 0x5f

    const/16 v1, 0x5a

    const/16 v2, 0x39

    const/16 v3, 0x2f

    const/16 v4, 0x20

    const/16 v5, 0x1f

    const/16 v6, 0x40

    const/4 v7, 0x3

    if-eqz p0, :cond_3d

    if-gt p2, v5, :cond_1b

    goto :goto_3c

    :cond_1b
    if-ne p2, v4, :cond_1f

    const/4 p2, 0x3

    goto :goto_3c

    :cond_1f
    if-gt p2, v3, :cond_24

    add-int/lit8 p2, p2, -0x21

    goto :goto_3c

    :cond_24
    if-gt p2, v2, :cond_29

    add-int/lit8 p2, p2, -0x2c

    goto :goto_3c

    :cond_29
    if-gt p2, v6, :cond_2e

    add-int/lit8 p2, p2, -0x2b

    goto :goto_3c

    :cond_2e
    if-gt p2, v1, :cond_33

    add-int/lit8 p2, p2, -0x33

    goto :goto_3c

    :cond_33
    if-gt p2, v0, :cond_38

    add-int/lit8 p2, p2, -0x45

    goto :goto_3c

    :cond_38
    if-gt p2, p3, :cond_3c

    add-int/lit8 p2, p2, -0x60

    :cond_3c
    :goto_3c
    return p2

    :cond_3d
    const/4 p0, 0x0

    if-nez p2, :cond_43

    :goto_40
    const/4 p2, 0x0

    goto/16 :goto_99

    :cond_43
    if-nez p1, :cond_4a

    if-gt p2, v7, :cond_4a

    add-int/lit8 p2, p2, -0x1

    goto :goto_99

    :cond_4a
    const/4 v8, 0x1

    if-ne p1, v8, :cond_50

    if-gt p2, v5, :cond_50

    goto :goto_99

    :cond_50
    if-ne p2, v4, :cond_54

    const/4 p2, 0x3

    goto :goto_99

    :cond_54
    const/16 p1, 0x21

    if-lt p2, p1, :cond_5d

    if-gt p2, v3, :cond_5d

    add-int/lit8 p2, p2, -0x21

    goto :goto_99

    :cond_5d
    const/16 p1, 0x30

    if-lt p2, p1, :cond_66

    if-gt p2, v2, :cond_66

    add-int/lit8 p2, p2, -0x2c

    goto :goto_99

    :cond_66
    const/16 p1, 0x3a

    if-lt p2, p1, :cond_6f

    if-gt p2, v6, :cond_6f

    add-int/lit8 p2, p2, -0x2b

    goto :goto_99

    :cond_6f
    const/16 p1, 0x41

    if-lt p2, p1, :cond_78

    if-gt p2, v1, :cond_78

    add-int/lit8 p2, p2, -0x40

    goto :goto_99

    :cond_78
    const/16 p1, 0x5b

    if-lt p2, p1, :cond_81

    if-gt p2, v0, :cond_81

    add-int/lit8 p2, p2, -0x45

    goto :goto_99

    :cond_81
    const/16 p1, 0x60

    if-ne p2, p1, :cond_86

    goto :goto_40

    :cond_86
    const/16 p0, 0x61

    if-lt p2, p0, :cond_91

    const/16 p0, 0x7a

    if-gt p2, p0, :cond_91

    add-int/lit8 p2, p2, -0x53

    goto :goto_99

    :cond_91
    const/16 p0, 0x7b

    if-lt p2, p0, :cond_99

    if-gt p2, p3, :cond_99

    add-int/lit8 p2, p2, -0x60

    :cond_99
    :goto_99
    return p2
.end method

.method static v(CZI)I
    .registers 4

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->a(C)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    if-nez p1, :cond_12

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->b(C)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_25

    :cond_12
    if-eqz p1, :cond_1a

    invoke-static {p0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->c(CI)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1a
    if-nez p1, :cond_24

    invoke-static {p0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->d(CI)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x2

    :goto_25
    return p0
.end method

.method private static w(C)I
    .registers 2

    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    goto :goto_2d

    :cond_6
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_c
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_12

    const/4 p0, 0x2

    goto :goto_2d

    :cond_12
    const/16 v0, 0x20

    if-ne p0, v0, :cond_18

    const/4 p0, 0x3

    goto :goto_2d

    :cond_18
    const/16 v0, 0x30

    if-lt p0, v0, :cond_23

    const/16 v0, 0x39

    if-gt p0, v0, :cond_23

    add-int/lit8 p0, p0, -0x2c

    goto :goto_2d

    :cond_23
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2d

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2d

    add-int/lit8 p0, p0, -0x33

    :cond_2d
    :goto_2d
    return p0
.end method

.method static y([BIIII)V
    .registers 5

    and-int/lit16 p2, p2, 0xff

    mul-int/lit16 p2, p2, 0x640

    and-int/lit16 p3, p3, 0xff

    mul-int/lit8 p3, p3, 0x28

    add-int/2addr p2, p3

    and-int/lit16 p3, p4, 0xff

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    div-int/lit16 p3, p2, 0x100

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 p2, p2, 0x100

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method g()I
    .registers 5

    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v3, :cond_13

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    goto :goto_2

    :cond_13
    return v0
.end method

.method k(ZI)[B
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    if-ge v2, v3, :cond_ae

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v3

    if-eqz p1, :cond_1c

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->f(C)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_1c
    if-nez p1, :cond_32

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->h(C)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_24
    invoke-static {p1, v1, v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->j(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_aa

    :cond_32
    invoke-static {v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v3, p1, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->v(CZI)I

    move-result v4

    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4, v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->j(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_51
    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-char v3, v3

    const/16 v4, 0x1e

    const/4 v5, 0x1

    if-eqz p1, :cond_61

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->f(C)Z

    move-result v6

    if-nez v6, :cond_69

    :cond_61
    if-nez p1, :cond_84

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->h(C)Z

    move-result v6

    if-eqz v6, :cond_84

    :cond_69
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->j(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_84
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, p1, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->v(CZI)I

    move-result v4

    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v4, v3, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->j(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_aa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_ae
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_bd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_c8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {p1, p2, v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->y([BIIII)V

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    goto :goto_c8

    :cond_fe
    return-object p1
.end method

.method l(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->r(I)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method m()[B
    .registers 5

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;->a:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_c4

    goto/16 :goto_c0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->n()[B

    move-result-object v0

    return-object v0

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->x()[B

    move-result-object v0

    return-object v0

    :pswitch_1b
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v0}, Lcom/google/zxing/common/g;->f()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->k(ZI)[B

    move-result-object v0

    return-object v0

    :pswitch_26
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v0}, Lcom/google/zxing/common/g;->f()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->k(ZI)[B

    move-result-object v0

    return-object v0

    :pswitch_31
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :pswitch_3e
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_58

    const/16 v0, 0xf1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/g;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :cond_58
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/16 v0, 0xeb

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x7f

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :cond_7d
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x30

    add-int/lit16 v0, v0, 0x82

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_a1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->h(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v0, 0xe8

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_b2
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :goto_c0
    new-array v0, v1, [B

    return-object v0

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_31
        :pswitch_26
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method n()[B
    .registers 13

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    add-int/2addr v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v5}, Lcom/google/zxing/common/g;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v0, :cond_75

    const/4 v7, 0x4

    new-array v8, v7, [I

    const/4 v9, 0x0

    :goto_29
    if-ge v9, v7, :cond_48

    if-gt v2, v3, :cond_3b

    iget-object v10, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v2}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    aput v2, v8, v9

    move v2, v11

    goto :goto_45

    :cond_3b
    add-int/lit8 v10, v3, 0x1

    if-ne v2, v10, :cond_42

    const/16 v10, 0x1f

    goto :goto_43

    :cond_42
    const/4 v10, 0x0

    :goto_43
    aput v10, v8, v9

    :goto_45
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_48
    aget v7, v8, v5

    shl-int/lit8 v7, v7, 0x12

    aget v9, v8, v4

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v7, v9

    const/4 v9, 0x2

    aget v9, v8, v9

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    const/4 v9, 0x3

    aget v8, v8, v9

    or-int/2addr v7, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v8, v6, 0x2

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    add-int/lit8 v6, v6, 0x3

    goto :goto_23

    :cond_75
    return-object v1
.end method

.method o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->p()I

    move-result v0

    if-lez v0, :cond_22

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->l(I)I

    move-result v1

    rsub-int/lit8 v0, v0, 0x2

    if-gt v1, v0, :cond_22

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, v1, :cond_30

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, v1, :cond_30

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, v1, :cond_5b

    :cond_30
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->length()I

    move-result v1

    if-lt v0, v1, :cond_48

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->l(I)I

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0

    :cond_48
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->p()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->l(I)I

    move-result v0

    if-nez v0, :cond_5b

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0

    :cond_5b
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method p()I
    .registers 8

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v0}, Lcom/google/zxing/common/g;->length()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    add-int/2addr v1, v2

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-gt v2, v4, :cond_109

    if-lt v1, v0, :cond_15

    goto/16 :goto_109

    :cond_15
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2c

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v2}, Lcom/google/zxing/common/g;->f()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v3

    :cond_2b
    return v0

    :cond_2c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_71

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v5}, Lcom/google/zxing/common/g;->f()I

    move-result v5

    invoke-static {v2, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v6}, Lcom/google/zxing/common/g;->f()I

    move-result v6

    invoke-static {v2, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_70

    :cond_56
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v1, v5}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v1

    if-eqz v1, :cond_6f

    return v0

    :cond_6f
    return v4

    :cond_70
    :goto_70
    return v3

    :cond_71
    const/4 v0, 0x3

    if-ne v2, v0, :cond_d3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v2}, Lcom/google/zxing/common/g;->f()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v0

    if-nez v0, :cond_a3

    return v4

    :cond_a3
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v1}, Lcom/google/zxing/common/g;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(CI)Z

    move-result v0

    if-nez v0, :cond_d2

    return v4

    :cond_d2
    return v3

    :cond_d3
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v2

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v2

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v2

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->d(C)Z

    move-result v0

    if-eqz v0, :cond_109

    return v4

    :cond_109
    :goto_109
    return v3
.end method

.method q()[B
    .registers 9

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;->a:[I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->t()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/16 v2, 0xf0

    const/16 v3, 0xee

    const/16 v4, 0xef

    const/16 v5, 0xe6

    const/16 v6, 0xe7

    packed-switch v1, :pswitch_data_84

    goto :goto_7f

    :pswitch_1a
    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->t()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v7

    if-eq v1, v7, :cond_7f

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xfe

    packed-switch v0, :pswitch_data_94

    goto :goto_7f

    :pswitch_30
    invoke-static {v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :pswitch_35
    invoke-static {v1, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :pswitch_3a
    invoke-static {v1, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :pswitch_3f
    invoke-static {v1, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :pswitch_44
    invoke-static {v1, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->i(II)[B

    move-result-object v0

    return-object v0

    :pswitch_49
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :pswitch_4e
    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_75

    const/4 v1, 0x4

    if-eq v0, v1, :cond_70

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_66

    goto :goto_7f

    :cond_66
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_6b
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_70
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_75
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_7a
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    return-object v0

    :cond_7f
    :goto_7f
    :pswitch_7f
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4e
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_7f
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
    .end packed-switch
.end method

.method r(I)I
    .registers 8

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;->b:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->j(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    const/4 v3, 0x2

    if-eq v0, v3, :cond_16

    goto :goto_32

    :cond_16
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->c:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_32

    aget v5, v0, v4

    if-lt v5, p1, :cond_21

    return v5

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_24
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->b:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_32

    aget v5, v0, v4

    if-lt v5, p1, :cond_2f

    return v5

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_32
    :goto_32
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->a:[I

    array-length v3, v0

    :goto_35
    if-ge v1, v3, :cond_3f

    aget v4, v0, v1

    if-lt v4, p1, :cond_3c

    return v4

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_3f
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->a:[I

    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    return p1
.end method

.method s()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method t()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method u()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_9

    :cond_7
    iget-object v0, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    :goto_9
    return-object v0
.end method

.method x()[B
    .registers 9

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->g:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_40

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    div-int/lit8 v5, v2, 0x2

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->w(C)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->w(C)I

    move-result v4

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    iget v7, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f:I

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/g;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->w(C)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->y([BIIII)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_40
    return-object v1
.end method
