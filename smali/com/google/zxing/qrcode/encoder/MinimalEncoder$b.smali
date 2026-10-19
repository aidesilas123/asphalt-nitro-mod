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
