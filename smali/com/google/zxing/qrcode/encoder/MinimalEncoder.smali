###### Class com.google.zxing.qrcode.encoder.MinimalEncoder (com.google.zxing.qrcode.encoder.MinimalEncoder)
.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/google/zxing/common/d;

.field private final d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b:Z

    new-instance p3, Lcom/google/zxing/common/d;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/google/zxing/common/d;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object p0
.end method

.method static synthetic b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/d;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    return-object p0
.end method

.method static synthetic d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b:Z

    return p0
.end method

.method static i(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->h(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    move-result-object p0

    return-object p0
.end method

.method static k(Lcom/google/zxing/qrcode/decoder/Mode;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_32

    const/4 v0, 0x2

    if-eq v1, v0, :cond_31

    const/4 v2, 0x3

    if-eq v1, v2, :cond_30

    const/4 v0, 0x4

    if-ne v1, v0, :cond_19

    return v2

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    return v0

    :cond_31
    return v2

    :cond_32
    return v0
.end method

.method static l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 2

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/16 p0, 0x28

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_15
    const/16 p0, 0x1a

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_1c
    const/16 p0, 0x9

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0
.end method

.method static m(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .registers 3

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->e()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_b

    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->a:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_18

    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->e()I

    move-result p0

    const/16 v0, 0x1a

    if-gt p0, v0, :cond_16

    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->b:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_18

    :cond_16
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    :goto_18
    return-object p0
.end method

.method static n(C)Z
    .registers 2

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->o(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static o(C)Z
    .registers 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static p(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V
    .registers 6

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v0

    add-int/2addr p2, v0

    aget-object p1, p1, p2

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object p2

    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->k(Lcom/google/zxing/qrcode/decoder/Mode;)I

    move-result p2

    aget-object v0, p1, p2

    if-eqz v0, :cond_25

    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v0

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v1

    if-le v0, v1, :cond_27

    :cond_25
    aput-object p3, p1, p2

    :cond_27
    return-void
.end method

.method f(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V
    .registers 21

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    invoke-virtual {v0}, Lcom/google/zxing/common/d;->g()I

    move-result v0

    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    invoke-virtual {v1}, Lcom/google/zxing/common/d;->f()I

    move-result v1

    if-ltz v1, :cond_25

    iget-object v2, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    iget-object v3, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/common/d;->a(CI)Z

    move-result v2

    if-eqz v2, :cond_25

    add-int/lit8 v0, v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    move v12, v0

    move v13, v1

    :goto_28
    if-ge v13, v12, :cond_51

    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, v13}, Lcom/google/zxing/common/d;->a(CI)Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v14, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v4, v13

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    invoke-virtual {v9, v10, v11, v14}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    :cond_4e
    add-int/lit8 v13, v13, 0x1

    goto :goto_28

    :cond_51
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->g:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_73

    new-instance v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    :cond_73
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->c:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v0, :cond_b0

    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    const/4 v4, 0x0

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v12, :cond_9f

    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_9f

    :cond_9d
    const/4 v5, 0x2

    goto :goto_a0

    :cond_9f
    :goto_9f
    const/4 v5, 0x1

    :goto_a0
    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    invoke-virtual {v9, v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    :cond_b0
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->b:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_f9

    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    const/4 v4, 0x0

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v12, :cond_e8

    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_e8

    :cond_d2
    add-int/lit8 v0, v11, 0x2

    if-ge v0, v12, :cond_e6

    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_e3

    goto :goto_e6

    :cond_e3
    const/4 v0, 0x3

    const/4 v5, 0x3

    goto :goto_e9

    :cond_e6
    :goto_e6
    const/4 v5, 0x2

    goto :goto_e9

    :cond_e8
    :goto_e8
    const/4 v5, 0x1

    :goto_e9
    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    invoke-virtual {v9, v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    :cond_f9
    return-void
.end method

.method g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .registers 5

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 p2, 0x4

    if-eq p1, p2, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    return v0

    :cond_17
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->p(C)Z

    move-result p1

    return p1

    :cond_1c
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->n(C)Z

    move-result p1

    return p1

    :cond_21
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->o(C)Z

    move-result p1

    return p1
.end method

.method h(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    if-nez p1, :cond_64

    const/4 p1, 0x3

    new-array v0, p1, [Lcom/google/zxing/qrcode/decoder/Version;

    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->a:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->b:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-array v1, p1, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    move-result-object v5

    aput-object v5, v1, v2

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    move-result-object v5

    aput-object v5, v1, v3

    aget-object v3, v0, v4

    invoke-virtual {p0, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7fffffff

    const/4 v4, -0x1

    :goto_3e
    if-ge v2, p1, :cond_57

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c()I

    move-result v5

    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v6

    if-eqz v6, :cond_54

    if-ge v5, v3, :cond_54

    move v4, v2

    move v3, v5

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_57
    if-ltz v4, :cond_5c

    aget-object p1, v1, v4

    return-object p1

    :cond_5c
    new-instance p1, Lcom/google/zxing/g;

    const-string v0, "Data too big for any version"

    invoke-direct {p1, v0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->e()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->m(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-eqz v1, :cond_81

    return-object v0

    :cond_81
    new-instance v0, Lcom/google/zxing/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data too big for version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    invoke-virtual {v2}, Lcom/google/zxing/common/d;->g()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->f(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    :goto_27
    if-gt v4, v0, :cond_51

    const/4 v3, 0x0

    :goto_2a
    iget-object v6, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    invoke-virtual {v6}, Lcom/google/zxing/common/d;->g()I

    move-result v6

    if-ge v3, v6, :cond_4e

    const/4 v6, 0x0

    :goto_33
    if-ge v6, v5, :cond_4b

    aget-object v7, v1, v4

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    if-eqz v7, :cond_48

    if-ge v4, v0, :cond_48

    aget-object v7, v1, v4

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {p0, p1, v1, v4, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->f(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_51
    const v3, 0x7fffffff

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_57
    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lcom/google/zxing/common/d;

    invoke-virtual {v8}, Lcom/google/zxing/common/d;->g()I

    move-result v8

    if-ge v7, v8, :cond_82

    const/4 v8, 0x0

    :goto_60
    if-ge v8, v5, :cond_7f

    aget-object v9, v1, v0

    aget-object v9, v9, v7

    aget-object v9, v9, v8

    if-eqz v9, :cond_7c

    aget-object v9, v1, v0

    aget-object v9, v9, v7

    aget-object v9, v9, v8

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v10

    if-ge v10, v3, :cond_7c

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v3

    move v4, v7

    move v6, v8

    :cond_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    :cond_7f
    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    :cond_82
    if-ltz v4, :cond_90

    new-instance v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    aget-object v0, v1, v0

    aget-object v0, v0, v4

    aget-object v0, v0, v6

    invoke-direct {v2, p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    return-object v2

    :cond_90
    new-instance p1, Lcom/google/zxing/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: failed to encode \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.google.zxing.qrcode.encoder.MinimalEncoder.VersionSize (com.google.zxing.qrcode.encoder.MinimalEncoder$VersionSize)
.class final enum Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
.super Ljava/lang/Enum;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VersionSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

.field public static final enum b:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

.field public static final enum c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

.field private static final synthetic d:[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const-string v3, "version 1-9"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->a:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    new-instance v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const-string v5, "version 10-26"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->b:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    new-instance v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    const-string v5, "LARGE"

    const/4 v6, 0x2

    const-string v7, "version 27-40"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->d:[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .registers 2

    const-class v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .registers 1

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->d:[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->e:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.zxing.qrcode.encoder.MinimalEncoder.a (com.google.zxing.qrcode.encoder.MinimalEncoder$a)
.class synthetic Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Mode;->values()[Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->g:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->c:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->b:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    invoke-static {}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->values()[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->a:[I

    :try_start_47
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->a:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->a:[I

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->b:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->a:[I

    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_63

    :catch_63
    return-void
.end method

###### Class com.google.zxing.qrcode.encoder.MinimalEncoder.b (com.google.zxing.qrcode.encoder.MinimalEncoder$b)
.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/zxing/qrcode/decoder/Mode;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

.field private final f:I

.field final synthetic g:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;


# direct methods
.method private constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;)V
    .registers 13

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->g:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    iput p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b:I

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq p2, v0, :cond_13

    if-nez p6, :cond_10

    goto :goto_13

    :cond_10
    iget v1, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c:I

    goto :goto_14

    :cond_13
    :goto_13
    move v1, p4

    :goto_14
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c:I

    iput p5, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d:I

    iput-object p6, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    const/4 v2, 0x0

    if-eqz p6, :cond_20

    iget v3, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->f:I

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    const/4 v4, 0x1

    if-ne p2, v0, :cond_28

    if-nez p6, :cond_28

    if-nez v1, :cond_2e

    :cond_28
    if-eqz p6, :cond_2f

    iget v0, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c:I

    if-eq v1, v0, :cond_2f

    :cond_2e
    const/4 v2, 0x1

    :cond_2f
    const/4 v0, 0x4

    if-eqz p6, :cond_38

    iget-object p6, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne p2, p6, :cond_38

    if-eqz v2, :cond_3e

    :cond_38
    invoke-virtual {p2, p7}, Lcom/google/zxing/qrcode/decoder/Mode;->f(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p6

    add-int/2addr p6, v0

    add-int/2addr v3, p6

    :cond_3e
    sget-object p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p6, p2

    if-eq p2, v4, :cond_7e

    const/4 p6, 0x2

    if-eq p2, p6, :cond_76

    const/4 p7, 0x3

    if-eq p2, p7, :cond_6b

    if-eq p2, v0, :cond_51

    goto :goto_80

    :cond_51
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/d;

    move-result-object p2

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p5, p3

    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lcom/google/zxing/common/d;->c(Ljava/lang/String;I)[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v3, p1

    if-eqz v2, :cond_80

    add-int/lit8 v3, v3, 0xc

    goto :goto_80

    :cond_6b
    if-ne p5, v4, :cond_6e

    goto :goto_74

    :cond_6e
    if-ne p5, p6, :cond_72

    const/4 v0, 0x7

    goto :goto_74

    :cond_72
    const/16 v0, 0xa

    :goto_74
    add-int/2addr v3, v0

    goto :goto_80

    :cond_76
    if-ne p5, v4, :cond_7a

    const/4 p1, 0x6

    goto :goto_7c

    :cond_7a
    const/16 p1, 0xb

    :goto_7c
    add-int/2addr v3, p1

    goto :goto_80

    :cond_7e
    add-int/lit8 v3, v3, 0xd

    :cond_80
    :goto_80
    iput v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/Version;)V

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c:I

    return p0
.end method

.method static synthetic c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method

.method static synthetic d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->f:I

    return p0
.end method

.method static synthetic e(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    return-object p0
.end method

.method static synthetic f(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I
    .registers 1

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b:I

    return p0
.end method

###### Class com.google.zxing.qrcode.encoder.MinimalEncoder.c (com.google.zxing.qrcode.encoder.MinimalEncoder$c)
.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/zxing/qrcode/decoder/Version;

.field final synthetic c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V
    .registers 16

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-eqz p3, :cond_81

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v4

    add-int v10, v1, v4

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->e(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    move-result-object v1

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v4, v5, :cond_2c

    if-nez v1, :cond_2c

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v4

    if-nez v4, :cond_38

    :cond_2c
    if-eqz v1, :cond_3a

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v4

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v5

    if-eq v4, v5, :cond_3a

    :cond_38
    const/4 v4, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    if-eqz v4, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    if-eqz v1, :cond_4c

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v3

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v5

    if-ne v3, v5, :cond_4c

    if-eqz v4, :cond_65

    :cond_4c
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    new-instance v11, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v7

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->f(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v8

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v9

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v10, 0x0

    :cond_65
    if-eqz v4, :cond_7e

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    new-instance v11, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->f(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v7

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7e
    move-object p3, v1

    move v1, v10

    goto :goto_f

    :cond_81
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z

    move-result p3

    if-eqz p3, :cond_cd

    iget-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    if-eqz p3, :cond_aa

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object p3

    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq p3, v6, :cond_aa

    if-eqz v2, :cond_aa

    iget-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    new-instance v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_aa
    iget-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object p3

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq p3, v2, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 v0, 0x1

    :goto_be
    new-instance p3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->h:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    invoke-interface {v1, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_cd
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Version;->e()I

    move-result p3

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->a:[I

    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->m(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_ec

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e7

    const/16 v3, 0x1b

    const/16 v0, 0x28

    goto :goto_ee

    :cond_e7
    const/16 v3, 0xa

    const/16 v0, 0x1a

    goto :goto_ee

    :cond_ec
    const/16 v0, 0x9

    :goto_ee
    invoke-direct {p0, p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->d(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p2

    :goto_f2
    if-ge p3, v0, :cond_105

    invoke-static {p3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-nez v1, :cond_105

    add-int/lit8 p3, p3, 0x1

    goto :goto_f2

    :cond_105
    :goto_105
    if-le p3, v3, :cond_11a

    add-int/lit8 v0, p3, -0x1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v0

    if-eqz v0, :cond_11a

    add-int/lit8 p3, p3, -0x1

    goto :goto_105

    :cond_11a
    invoke-static {p3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->b:Lcom/google/zxing/qrcode/decoder/Version;

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->b:Lcom/google/zxing/qrcode/decoder/Version;

    return-object p0
.end method

.method private d(Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    invoke-static {v2, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_19
    return v1
.end method


# virtual methods
.method b(Lcom/google/zxing/common/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    invoke-static {v1, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;Lcom/google/zxing/common/a;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method c()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->b:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->d(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    return v0
.end method

.method e()Lcom/google/zxing/qrcode/decoder/Version;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->b:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;

    if-eqz v2, :cond_1f

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    goto :goto_c

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.zxing.qrcode.encoder.MinimalEncoder.c.a (com.google.zxing.qrcode.encoder.MinimalEncoder$c$a)
.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/zxing/qrcode/decoder/Mode;

.field private final b:I

.field private final c:I

.field private final d:I

.field final synthetic e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;


# direct methods
.method constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;Lcom/google/zxing/qrcode/decoder/Mode;III)V
    .registers 6

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    iput p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    iput p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    iput p5, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method

.method static synthetic b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->f(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;Lcom/google/zxing/common/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d(Lcom/google/zxing/common/a;)V

    return-void
.end method

.method private d(Lcom/google/zxing/common/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->e()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->e(II)V

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    if-lez v0, :cond_21

    invoke-direct {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;->f(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->e(II)V

    :cond_21
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/d;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/d;->e(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_63

    :cond_3b
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    if-lez v0, :cond_63

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/d;

    move-result-object v2

    iget v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/d;->d(I)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->c(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Ljava/nio/charset/Charset;)V

    :cond_63
    :goto_63
    return-void
.end method

.method private e()I
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    iget v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/d;->c(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_29

    :cond_27
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    :goto_29
    return v0
.end method

.method private f(Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 9

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->f(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p1

    const/4 v0, 0x4

    add-int/2addr p1, v0

    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3d

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2c

    if-eq v1, v0, :cond_25

    const/4 v0, 0x5

    if-eq v1, v0, :cond_22

    goto :goto_4f

    :cond_22
    add-int/lit8 p1, p1, 0x8

    goto :goto_4f

    :cond_25
    invoke-direct {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    goto :goto_4e

    :cond_2c
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    div-int/lit8 v6, v1, 0x3

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr p1, v6

    rem-int/2addr v1, v5

    if-ne v1, v2, :cond_37

    goto :goto_4e

    :cond_37
    if-ne v1, v4, :cond_3b

    const/4 v0, 0x7

    goto :goto_4e

    :cond_3b
    const/4 v0, 0x0

    goto :goto_4e

    :cond_3d
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    div-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr p1, v1

    rem-int/2addr v0, v4

    if-ne v0, v2, :cond_48

    const/4 v3, 0x6

    :cond_48
    add-int/2addr p1, v3

    goto :goto_4f

    :cond_4a
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    mul-int/lit8 v0, v0, 0xd

    :goto_4e
    add-int/2addr p1, v0

    :goto_4f
    return p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_25

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7e

    if-le v2, v3, :cond_1d

    goto :goto_25

    :cond_1d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_25
    :goto_25
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/d;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->c:I

    invoke-virtual {v1, v2}, Lcom/google/zxing/common/d;->d(I)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_2b
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->e:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->b:I

    iget v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->d:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_43
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
