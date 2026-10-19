###### Class com.google.common.escape.c (com.google.common.escape.c)
.class public abstract Lcom/google/common/escape/c;
.super Lcom/google/common/escape/d;
.source "CharEscaper.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/escape/d;-><init>()V

    return-void
.end method

.method private static d([CII)[C
    .registers 4

    if-ltz p2, :cond_b

    new-array p2, p2, [C

    if-lez p1, :cond_a

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-object p2

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot increase internal buffer any further"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method protected abstract b(C)[C
.end method

.method protected final c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/common/escape/e;->a()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge p2, v0, :cond_3c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/common/escape/c;->b(C)[C

    move-result-object v6

    if-nez v6, :cond_19

    goto :goto_39

    :cond_19
    array-length v7, v6

    sub-int v8, p2, v4

    add-int v9, v5, v8

    add-int v10, v9, v7

    if-ge v2, v10, :cond_2b

    sub-int v2, v0, p2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    invoke-static {v1, v5, v2}, Lcom/google/common/escape/c;->d([CII)[C

    move-result-object v1

    :cond_2b
    if-lez v8, :cond_31

    invoke-virtual {p1, v4, p2, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    move v5, v9

    :cond_31
    if-lez v7, :cond_37

    invoke-static {v6, v3, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :cond_37
    add-int/lit8 v4, p2, 0x1

    :goto_39
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_3c
    sub-int p2, v0, v4

    if-lez p2, :cond_4b

    add-int/2addr p2, v5

    if-ge v2, p2, :cond_47

    invoke-static {v1, v5, p2}, Lcom/google/common/escape/c;->d([CII)[C

    move-result-object v1

    :cond_47
    invoke-virtual {p1, v4, v0, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    move v5, p2

    :cond_4b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
