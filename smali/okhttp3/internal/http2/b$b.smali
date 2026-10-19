###### Class okhttp3.internal.http2.Hpack.b (okhttp3.internal.http2.b$b)
.class public final Lokhttp3/internal/http2/b$b;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\u000e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dJ\u0014\u0010\u001e\u001a\u00020\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0 J\u001e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003R\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack$Writer;",
        "",
        "headerTableSizeSetting",
        "",
        "useCompression",
        "",
        "out",
        "Lokio/Buffer;",
        "(IZLokio/Buffer;)V",
        "dynamicTable",
        "",
        "Lokhttp3/internal/http2/Header;",
        "[Lokhttp3/internal/http2/Header;",
        "dynamicTableByteCount",
        "emitDynamicTableSizeUpdate",
        "headerCount",
        "maxDynamicTableByteCount",
        "nextHeaderIndex",
        "smallestHeaderTableSizeSetting",
        "adjustDynamicTableByteCount",
        "",
        "clearDynamicTable",
        "evictToRecoverBytes",
        "bytesToRecover",
        "insertIntoDynamicTable",
        "entry",
        "resizeHeaderTable",
        "writeByteString",
        "data",
        "Lokio/ByteString;",
        "writeHeaders",
        "headerBlock",
        "",
        "writeInt",
        "value",
        "prefixMask",
        "bits",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:I

.field private final b:Z

.field private final c:Lokio/Buffer;

.field private d:I

.field private e:Z

.field public f:I

.field public g:[Lokhttp3/internal/http2/Header;

.field private h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(IZLokio/Buffer;)V
    .registers 5

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokhttp3/internal/http2/b$b;->a:I

    iput-boolean p2, p0, Lokhttp3/internal/http2/b$b;->b:Z

    iput-object p3, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    const p2, 0x7fffffff

    iput p2, p0, Lokhttp3/internal/http2/b$b;->d:I

    iput p1, p0, Lokhttp3/internal/http2/b$b;->f:I

    const/16 p1, 0x8

    new-array p1, p1, [Lokhttp3/internal/http2/Header;

    iput-object p1, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lokhttp3/internal/http2/b$b;->h:I

    return-void
.end method

.method public synthetic constructor <init>(IZLokio/Buffer;ILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const/16 p1, 0x1000

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    const/4 p2, 0x1

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/b$b;-><init>(IZLokio/Buffer;)V

    return-void
.end method

.method private final a()V
    .registers 3

    iget v0, p0, Lokhttp3/internal/http2/b$b;->f:I

    iget v1, p0, Lokhttp3/internal/http2/b$b;->j:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    invoke-direct {p0}, Lokhttp3/internal/http2/b$b;->b()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lokhttp3/internal/http2/b$b;->c(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private final b()V
    .registers 7

    iget-object v0, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/k;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    iget-object v0, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/b$b;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/b$b;->i:I

    iput v0, p0, Lokhttp3/internal/http2/b$b;->j:I

    return-void
.end method

.method private final c(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_4f

    iget-object v1, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lokhttp3/internal/http2/b$b;->h:I

    if-lt v1, v2, :cond_31

    if-lez p1, :cond_31

    iget-object v2, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokhttp3/internal/http2/Header;->j:I

    sub-int/2addr p1, v2

    iget v2, p0, Lokhttp3/internal/http2/b$b;->j:I

    iget-object v3, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lokhttp3/internal/http2/Header;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/b$b;->j:I

    iget v2, p0, Lokhttp3/internal/http2/b$b;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/b$b;->i:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_31
    iget-object p1, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lokhttp3/internal/http2/b$b;->i:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    iget v1, p0, Lokhttp3/internal/http2/b$b;->h:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lokhttp3/internal/http2/b$b;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/http2/b$b;->h:I

    :cond_4f
    return v0
.end method

.method private final d(Lokhttp3/internal/http2/Header;)V
    .registers 8

    iget v0, p1, Lokhttp3/internal/http2/Header;->j:I

    iget v1, p0, Lokhttp3/internal/http2/b$b;->f:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lokhttp3/internal/http2/b$b;->b()V

    return-void

    :cond_a
    iget v2, p0, Lokhttp3/internal/http2/b$b;->j:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/b$b;->c(I)I

    iget v1, p0, Lokhttp3/internal/http2/b$b;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/b$b;->h:I

    iput-object v1, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    :cond_2e
    iget v1, p0, Lokhttp3/internal/http2/b$b;->h:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/http2/b$b;->h:I

    iget-object v2, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    aput-object p1, v2, v1

    iget p1, p0, Lokhttp3/internal/http2/b$b;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/http2/b$b;->i:I

    iget p1, p0, Lokhttp3/internal/http2/b$b;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/http2/b$b;->j:I

    return-void
.end method


# virtual methods
.method public final e(I)V
    .registers 3

    iput p1, p0, Lokhttp3/internal/http2/b$b;->a:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lokhttp3/internal/http2/b$b;->f:I

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    if-ge p1, v0, :cond_17

    iget v0, p0, Lokhttp3/internal/http2/b$b;->d:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/b$b;->d:I

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http2/b$b;->e:Z

    iput p1, p0, Lokhttp3/internal/http2/b$b;->f:I

    invoke-direct {p0}, Lokhttp3/internal/http2/b$b;->a()V

    return-void
.end method

.method public final f(Lokio/ByteString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/b$b;->b:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_32

    sget-object v0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/f;->d(Lokio/ByteString;)I

    move-result v2

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v3

    if-ge v2, v3, :cond_32

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/http2/f;->c(Lokio/ByteString;Lokio/d;)V

    invoke-virtual {v2}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/b$b;->h(III)V

    iget-object v0, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_3f

    :cond_32
    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/b$b;->h(III)V

    iget-object v0, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    :goto_3f
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/b$b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget v0, p0, Lokhttp3/internal/http2/b$b;->d:I

    iget v2, p0, Lokhttp3/internal/http2/b$b;->f:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_17

    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/b$b;->h(III)V

    :cond_17
    iput-boolean v1, p0, Lokhttp3/internal/http2/b$b;->e:Z

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/http2/b$b;->d:I

    iget v0, p0, Lokhttp3/internal/http2/b$b;->f:I

    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/b$b;->h(III)V

    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_10e

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/http2/Header;

    iget-object v4, v2, Lokhttp3/internal/http2/Header;->h:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->I()Lokio/ByteString;

    move-result-object v4

    iget-object v5, v2, Lokhttp3/internal/http2/Header;->i:Lokio/ByteString;

    sget-object v6, Lokhttp3/internal/http2/b;->a:Lokhttp3/internal/http2/b;

    invoke-virtual {v6}, Lokhttp3/internal/http2/b;->b()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v7, :cond_83

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v9

    const/4 v10, 0x2

    if-gt v10, v7, :cond_58

    const/16 v10, 0x8

    if-ge v7, v10, :cond_58

    const/4 v10, 0x1

    goto :goto_59

    :cond_58
    const/4 v10, 0x0

    :goto_59
    if-eqz v10, :cond_81

    invoke-virtual {v6}, Lokhttp3/internal/http2/b;->c()[Lokhttp3/internal/http2/Header;

    move-result-object v10

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lokhttp3/internal/http2/Header;->i:Lokio/ByteString;

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    move v6, v7

    goto :goto_85

    :cond_6d
    invoke-virtual {v6}, Lokhttp3/internal/http2/b;->c()[Lokhttp3/internal/http2/Header;

    move-result-object v6

    aget-object v6, v6, v7

    iget-object v6, v6, Lokhttp3/internal/http2/Header;->i:Lokio/ByteString;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    add-int/lit8 v6, v7, 0x1

    move v13, v7

    move v7, v6

    move v6, v13

    goto :goto_85

    :cond_81
    move v6, v7

    goto :goto_84

    :cond_83
    const/4 v6, -0x1

    :goto_84
    const/4 v7, -0x1

    :goto_85
    if-ne v7, v8, :cond_ca

    iget v10, p0, Lokhttp3/internal/http2/b$b;->h:I

    add-int/2addr v10, v9

    iget-object v9, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    array-length v9, v9

    :goto_8d
    if-ge v10, v9, :cond_ca

    add-int/lit8 v11, v10, 0x1

    iget-object v12, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    aget-object v12, v12, v10

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->h:Lokio/ByteString;

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    iget-object v12, p0, Lokhttp3/internal/http2/b$b;->g:[Lokhttp3/internal/http2/Header;

    aget-object v12, v12, v10

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->i:Lokio/ByteString;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bb

    iget v7, p0, Lokhttp3/internal/http2/b$b;->h:I

    sub-int/2addr v10, v7

    sget-object v7, Lokhttp3/internal/http2/b;->a:Lokhttp3/internal/http2/b;

    invoke-virtual {v7}, Lokhttp3/internal/http2/b;->c()[Lokhttp3/internal/http2/Header;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v7, v10

    goto :goto_ca

    :cond_bb
    if-ne v6, v8, :cond_c8

    iget v6, p0, Lokhttp3/internal/http2/b$b;->h:I

    sub-int/2addr v10, v6

    sget-object v6, Lokhttp3/internal/http2/b;->a:Lokhttp3/internal/http2/b;

    invoke-virtual {v6}, Lokhttp3/internal/http2/b;->c()[Lokhttp3/internal/http2/Header;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v10

    :cond_c8
    move v10, v11

    goto :goto_8d

    :cond_ca
    :goto_ca
    if-eq v7, v8, :cond_d4

    const/16 v2, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v7, v2, v4}, Lokhttp3/internal/http2/b$b;->h(III)V

    goto :goto_10b

    :cond_d4
    const/16 v7, 0x40

    if-ne v6, v8, :cond_e7

    iget-object v6, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    invoke-virtual {v6, v7}, Lokio/Buffer;->U(I)Lokio/Buffer;

    invoke-virtual {p0, v4}, Lokhttp3/internal/http2/b$b;->f(Lokio/ByteString;)V

    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/b$b;->f(Lokio/ByteString;)V

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/b$b;->d(Lokhttp3/internal/http2/Header;)V

    goto :goto_10b

    :cond_e7
    sget-object v8, Lokhttp3/internal/http2/Header;->b:Lokio/ByteString;

    invoke-virtual {v4, v8}, Lokio/ByteString;->G(Lokio/ByteString;)Z

    move-result v8

    if-eqz v8, :cond_100

    sget-object v8, Lokhttp3/internal/http2/Header;->g:Lokio/ByteString;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_100

    const/16 v2, 0xf

    invoke-virtual {p0, v6, v2, v1}, Lokhttp3/internal/http2/b$b;->h(III)V

    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/b$b;->f(Lokio/ByteString;)V

    goto :goto_10b

    :cond_100
    const/16 v4, 0x3f

    invoke-virtual {p0, v6, v4, v7}, Lokhttp3/internal/http2/b$b;->h(III)V

    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/b$b;->f(Lokio/ByteString;)V

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/b$b;->d(Lokhttp3/internal/http2/Header;)V

    :goto_10b
    move v2, v3

    goto/16 :goto_28

    :cond_10e
    return-void
.end method

.method public final h(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    return-void

    :cond_9
    iget-object v0, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokio/Buffer;->U(I)Lokio/Buffer;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lokio/Buffer;->U(I)Lokio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    :cond_1f
    iget-object p2, p0, Lokhttp3/internal/http2/b$b;->c:Lokio/Buffer;

    invoke-virtual {p2, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    return-void
.end method
