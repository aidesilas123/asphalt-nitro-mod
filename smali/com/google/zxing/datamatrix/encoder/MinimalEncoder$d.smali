###### Class com.google.zxing.datamatrix.encoder.MinimalEncoder.d (com.google.zxing.datamatrix.encoder.MinimalEncoder$d)
.class final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2f

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v4, v5, :cond_2f

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v4, v5, :cond_43

    :cond_2f
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v4, v5, :cond_43

    const/16 v4, 0xfe

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->c([BLjava/util/List;)I

    move-result v4

    add-int/2addr v4, v6

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :goto_44
    move-object v5, p1

    :goto_45
    if-eqz v5, :cond_ad

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->m()[B

    move-result-object v7

    invoke-static {v7, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->c([BLjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    move-result-object v7

    if-eqz v7, :cond_60

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->u()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->s()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v8

    if-eq v7, v8, :cond_a8

    :cond_60
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->s()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v7, v8, :cond_a0

    const/16 v7, 0xf9

    if-gt v4, v7, :cond_77

    int-to-byte v7, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8e

    :cond_77
    rem-int/lit16 v8, v4, 0xfa

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    div-int/lit16 v8, v4, 0xfa

    add-int/2addr v8, v7

    int-to-byte v7, v8

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    :goto_8e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a0
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->q()[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->c([BLjava/util/List;)I

    const/4 v4, 0x0

    :cond_a8
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    move-result-object v5

    goto :goto_45

    :cond_ad
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->i(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_be

    const/16 v4, 0xec

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->c([BLjava/util/List;)I

    goto :goto_ce

    :cond_be
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->i(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_ce

    const/16 v4, 0xed

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->c([BLjava/util/List;)I

    :cond_ce
    :goto_ce
    invoke-virtual {v0}, Lcom/google/zxing/common/g;->f()I

    move-result v0

    if-lez v0, :cond_dd

    const/16 v0, 0xe8

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->h(I)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->c([BLjava/util/List;)I

    :cond_dd
    const/4 v0, 0x0

    :goto_de
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_103

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->a(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    :cond_103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->r(I)I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_11a

    const/16 v0, -0x7f

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11a
    :goto_11a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_133

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->d(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11a

    :cond_133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->a:[B

    :goto_13b
    iget-object p1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->a:[B

    array-length v0, p1

    if-ge v6, v0, :cond_14f

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_13b

    :cond_14f
    return-void
.end method

.method static a(Ljava/util/List;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2a

    add-int v1, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit16 v4, v4, 0x95

    rem-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    if-gt v2, v3, :cond_1d

    goto :goto_1f

    :cond_1d
    add-int/lit16 v2, v2, -0x100

    :goto_1f
    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method

.method static c([BLjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_12

    const/4 v1, 0x0

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_12
    array-length p0, p0

    return p0
.end method

.method private static d(I)I
    .registers 2

    mul-int/lit16 p0, p0, 0x95

    rem-int/lit16 p0, p0, 0xfd

    add-int/lit8 p0, p0, 0x1

    add-int/lit16 p0, p0, 0x81

    const/16 v0, 0xfe

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit16 p0, p0, -0xfe

    :goto_f
    return p0
.end method


# virtual methods
.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->a:[B

    return-object v0
.end method
