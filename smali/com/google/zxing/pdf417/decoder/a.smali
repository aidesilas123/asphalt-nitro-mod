###### Class com.google.zxing.pdf417.decoder.a (com.google.zxing.pdf417.decoder.a)
.class final Lcom/google/zxing/pdf417/decoder/a;
.super Ljava/lang/Object;
.source "BarcodeMetadata.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/a;->a:I

    iput p4, p0, Lcom/google/zxing/pdf417/decoder/a;->b:I

    iput p2, p0, Lcom/google/zxing/pdf417/decoder/a;->c:I

    iput p3, p0, Lcom/google/zxing/pdf417/decoder/a;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/google/zxing/pdf417/decoder/a;->e:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/a;->a:I

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/a;->b:I

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/a;->e:I

    return v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/a;->d:I

    return v0
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/a;->c:I

    return v0
.end method
