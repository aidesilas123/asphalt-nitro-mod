###### Class com.google.zxing.qrcode.decoder.Version.b (com.google.zxing.qrcode.decoder.Version$b)
.class public final Lcom/google/zxing/qrcode/decoder/Version$b;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/qrcode/decoder/Version$a;


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$b;->a:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version$b;->b:[Lcom/google/zxing/qrcode/decoder/Version$a;

    return-void
.end method


# virtual methods
.method public a()[Lcom/google/zxing/qrcode/decoder/Version$a;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$b;->b:[Lcom/google/zxing/qrcode/decoder/Version$a;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$b;->a:I

    return v0
.end method

.method public c()I
    .registers 6

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$b;->b:[Lcom/google/zxing/qrcode/decoder/Version$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$a;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v3
.end method

.method public d()I
    .registers 3

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$b;->a:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$b;->c()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
