###### Class kotlinx.serialization.json.internal.ArrayAsSequence (kotlinx.serialization.json.internal.f)
.class public final Lkotlinx/serialization/json/internal/f;
.super Ljava/lang/Object;
.source "JsonLexer.kt"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000c\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0096\u0002J\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0016J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "",
        "buffer",
        "",
        "([C)V",
        "getBuffer",
        "()[C",
        "length",
        "",
        "getLength",
        "()I",
        "setLength",
        "(I)V",
        "get",
        "",
        "index",
        "subSequence",
        "startIndex",
        "endIndex",
        "substring",
        "",
        "trim",
        "",
        "newSize",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:[C

.field private b:I


# direct methods
.method public constructor <init>([C)V
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/f;->a:[C

    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/json/internal/f;->b:I

    return-void
.end method


# virtual methods
.method public a(I)C
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f;->a:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public final b()[C
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f;->a:[C

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lkotlinx/serialization/json/internal/f;->b:I

    return v0
.end method

.method public final bridge charAt(I)C
    .registers 2

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/f;->a(I)C

    move-result p1

    return p1
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lkotlinx/serialization/json/internal/f;->b:I

    return-void
.end method

.method public final e(II)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f;->a:[C

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p1, p2}, Lkotlin/text/g;->concatToString([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(I)V
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f;->a:[C

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/f;->d(I)V

    return-void
.end method

.method public final bridge length()I
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f;->c()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f;->a:[C

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p1, p2}, Lkotlin/text/g;->concatToString([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
