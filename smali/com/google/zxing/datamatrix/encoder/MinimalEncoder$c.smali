###### Class com.google.zxing.datamatrix.encoder.MinimalEncoder.c (com.google.zxing.datamatrix.encoder.MinimalEncoder$c)
.class final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;
.super Lcom/google/zxing/common/g;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final c:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private final d:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object p4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)V

    return-void
.end method

.method static synthetic i(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)I
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->k()I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->l()Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-result-object p0

    return-object p0
.end method

.method private k()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->d:I

    return v0
.end method

.method private l()Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;->c:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-object v0
.end method
