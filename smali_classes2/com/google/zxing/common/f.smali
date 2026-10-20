###### Class com.google.zxing.common.f (com.google.zxing.common.f)
.class public final Lcom/google/zxing/common/f;
.super Ljava/lang/Object;
.source "ECIStringBuilder.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/zxing/common/f;->c:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/zxing/common/f;->c:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/common/f;->c:Ljava/nio/charset/Charset;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_67

    iget-object v0, p0, Lcom/google/zxing/common/f;->b:Ljava/lang/StringBuilder;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/google/zxing/common/f;->b:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_22
    iget-object v1, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_2f
    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_67

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/common/f;->b:Ljava/lang/StringBuilder;

    if-nez v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/zxing/common/f;->c:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/zxing/common/f;->b:Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_5d
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/zxing/common/f;->c:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public b(C)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public d(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/zxing/common/f;->e()V

    invoke-static {p1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/zxing/common/CharacterSetECI;->e()Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/f;->c:Ljava/nio/charset/Charset;

    return-void

    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/zxing/common/f;->b:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/common/f;->e()V

    iget-object v0, p0, Lcom/google/zxing/common/f;->b:Ljava/lang/StringBuilder;

    if-nez v0, :cond_a

    const-string v0, ""

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method
