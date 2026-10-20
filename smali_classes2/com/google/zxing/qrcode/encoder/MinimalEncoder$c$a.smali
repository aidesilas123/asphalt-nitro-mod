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
