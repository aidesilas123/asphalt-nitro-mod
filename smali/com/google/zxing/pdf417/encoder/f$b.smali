###### Class com.google.zxing.pdf417.encoder.f.b (com.google.zxing.pdf417.encoder.f$b)
.class final Lcom/google/zxing/pdf417/encoder/f$b;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"

# interfaces
.implements Lcom/google/zxing/common/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/encoder/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/encoder/f$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/f$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/encoder/f$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public charAt(I)C
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/f$b;->a:Ljava/lang/String;

    return-object v0
.end method
