###### Class com.google.common.hash.Funnels (com.google.common.hash.Funnels)
.class public final Lcom/google/common/hash/Funnels;
.super Ljava/lang/Object;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Funnels$b;,
        Lcom/google/common/hash/Funnels$LongFunnel;,
        Lcom/google/common/hash/Funnels$a;,
        Lcom/google/common/hash/Funnels$IntegerFunnel;,
        Lcom/google/common/hash/Funnels$c;,
        Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;,
        Lcom/google/common/hash/Funnels$ByteArrayFunnel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOutputStream(Lcom/google/common/hash/v;)Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/google/common/hash/Funnels$b;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$b;-><init>(Lcom/google/common/hash/v;)V

    return-object v0
.end method

.method public static byteArrayFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$ByteArrayFunnel;->a:Lcom/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method

.method public static integerFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$IntegerFunnel;->a:Lcom/google/common/hash/Funnels$IntegerFunnel;

    return-object v0
.end method

.method public static longFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->a:Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static sequentialFunnel(Lcom/google/common/hash/k;)Lcom/google/common/hash/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/k<",
            "TE;>;)",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/Funnels$a;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$a;-><init>(Lcom/google/common/hash/k;)V

    return-object v0
.end method

.method public static stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/Funnels$c;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$c;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static unencodedCharsFunnel()Lcom/google/common/hash/k;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/k<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method
