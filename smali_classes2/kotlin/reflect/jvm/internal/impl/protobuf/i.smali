###### Class kotlin.reflect.jvm.internal.impl.protobuf.i (kotlin.reflect.jvm.internal.impl.protobuf.i)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/i;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/i$b;
    }
.end annotation


# instance fields
.field protected final b:[B

.field private c:I


# direct methods
.method constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->c:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    return-void
.end method

.method static C(I[BII)I
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return p0
.end method


# virtual methods
.method A(Lkotlin/reflect/jvm/internal/impl/protobuf/i;II)Z
    .registers 8

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    if-gt p3, v0, :cond_5c

    add-int v0, p2, p3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v1

    if-gt v0, v1, :cond_31

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result p3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result p1

    add-int/2addr p1, p2

    :goto_20
    if-ge p3, v2, :cond_2f

    aget-byte p2, v0, p3

    aget-byte v3, v1, p1

    if-eq p2, v3, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected B()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected e([BIII)V
    .registers 6

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    if-eqz v0, :cond_2e

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->A(Lkotlin/reflect/jvm/internal/impl/protobuf/i;II)Z

    move-result p1

    return p1

    :cond_2e
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    if-eqz v0, :cond_37

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .registers 4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->c:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->l(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->c:I

    :cond_12
    return v0
.end method

.method public i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/i$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/i;Lkotlin/reflect/jvm/internal/impl/protobuf/i$a;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->e(Lkotlin/reflect/jvm/internal/impl/protobuf/i;)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected l(III)I
    .registers 6

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->C(I[BII)I

    move-result p1

    return p1
.end method

.method protected n(III)I
    .registers 5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1
.end method

.method protected o()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->c:I

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    array-length v0, v0

    return v0
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method y(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->B()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public z(I)B
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method
