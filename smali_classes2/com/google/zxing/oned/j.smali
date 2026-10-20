###### Class com.google.zxing.oned.j (com.google.zxing.oned.j)
.class public final Lcom/google/zxing/oned/j;
.super Lcom/google/zxing/oned/t;
.source "EAN8Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/oned/t;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)[Z
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_39

    const/16 v2, 0x8

    if-ne v0, v2, :cond_22

    :try_start_b
    invoke-static {p1}, Lcom/google/zxing/oned/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4c

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1a
    .catch Lcom/google/zxing/FormatException; {:try_start_b .. :try_end_1a} :catch_1a

    :catch_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested contents should be 7 or 8 digits long, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    :try_start_39
    invoke-static {p1}, Lcom/google/zxing/oned/s;->b(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_3d
    .catch Lcom/google/zxing/FormatException; {:try_start_39 .. :try_end_3d} :catch_9a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4c
    invoke-static {p1}, Lcom/google/zxing/oned/n;->c(Ljava/lang/String;)V

    const/16 v0, 0x43

    new-array v0, v0, [Z

    sget-object v2, Lcom/google/zxing/oned/s;->a:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Lcom/google/zxing/oned/n;->b([ZI[IZ)I

    move-result v2

    add-int/2addr v2, v3

    const/4 v5, 0x0

    :goto_5d
    const/4 v6, 0x3

    const/16 v7, 0xa

    if-gt v5, v6, :cond_76

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    sget-object v7, Lcom/google/zxing/oned/s;->d:[[I

    aget-object v6, v7, v6

    invoke-static {v0, v2, v6, v3}, Lcom/google/zxing/oned/n;->b([ZI[IZ)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_76
    sget-object v5, Lcom/google/zxing/oned/s;->b:[I

    invoke-static {v0, v2, v5, v3}, Lcom/google/zxing/oned/n;->b([ZI[IZ)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x4

    :goto_7e
    if-gt v3, v1, :cond_94

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    sget-object v6, Lcom/google/zxing/oned/s;->d:[[I

    aget-object v5, v6, v5

    invoke-static {v0, v2, v5, v4}, Lcom/google/zxing/oned/n;->b([ZI[IZ)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_94
    sget-object p1, Lcom/google/zxing/oned/s;->a:[I

    invoke-static {v0, v2, p1, v4}, Lcom/google/zxing/oned/n;->b([ZI[IZ)I

    return-object v0

    :catch_9a
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected g()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->g:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
