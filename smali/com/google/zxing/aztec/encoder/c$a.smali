###### Class com.google.zxing.aztec.encoder.c.a (com.google.zxing.aztec.encoder.c$a)
.class Lcom/google/zxing/aztec/encoder/c$a;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/aztec/encoder/c;->a()Lcom/google/zxing/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/aztec/encoder/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/aztec/encoder/c;


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/c$a;->a:Lcom/google/zxing/aztec/encoder/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/aztec/encoder/e;Lcom/google/zxing/aztec/encoder/e;)I
    .registers 3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/e;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/e;->f()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/zxing/aztec/encoder/e;

    check-cast p2, Lcom/google/zxing/aztec/encoder/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/c$a;->a(Lcom/google/zxing/aztec/encoder/e;Lcom/google/zxing/aztec/encoder/e;)I

    move-result p1

    return p1
.end method
