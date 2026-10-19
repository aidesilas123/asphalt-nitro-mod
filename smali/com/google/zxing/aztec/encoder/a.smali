###### Class com.google.zxing.aztec.encoder.a (com.google.zxing.aztec.encoder.a)
.class public final Lcom/google/zxing/aztec/encoder/a;
.super Ljava/lang/Object;
.source "AztecCode.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/a;->e:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/aztec/encoder/a;->d:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/zxing/aztec/encoder/a;->a:Z

    return-void
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/aztec/encoder/a;->c:I

    return-void
.end method

.method public e(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/a;->e:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/aztec/encoder/a;->b:I

    return-void
.end method
