###### Class kotlinx.serialization.json.internal.ReaderJsonLexer (kotlinx.serialization.json.internal.n0)
.class public final Lkotlinx/serialization/json/internal/n0;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "JsonLexer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0014J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u000eH\u0016J\u0018\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000cH\u0016J\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u000cH\u0016J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000cH\u0002J\u0018\u0010#\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000cH\u0016J\u0008\u0010%\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "reader",
        "Lkotlinx/serialization/json/internal/SerialReader;",
        "charsBuffer",
        "",
        "(Lkotlinx/serialization/json/internal/SerialReader;[C)V",
        "source",
        "Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "getSource",
        "()Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "threshold",
        "",
        "appendRange",
        "",
        "fromIndex",
        "toIndex",
        "canConsumeValue",
        "",
        "consumeKeyString",
        "",
        "consumeLeadingMatchingValue",
        "keyToMatch",
        "isLenient",
        "consumeNextToken",
        "",
        "ensureHaveChars",
        "indexOf",
        "char",
        "",
        "startPos",
        "prefetchOrEof",
        "position",
        "preload",
        "unprocessedCount",
        "substring",
        "endPos",
        "tryConsumeComma",
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
.field private final e:Lkotlinx/serialization/json/internal/o0;

.field private f:I

.field private final g:Lkotlinx/serialization/json/internal/f;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/o0;[C)V
    .registers 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charsBuffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/n0;->e:Lkotlinx/serialization/json/internal/o0;

    const/16 p1, 0x80

    iput p1, p0, Lkotlinx/serialization/json/internal/n0;->f:I

    new-instance p1, Lkotlinx/serialization/json/internal/f;

    invoke-direct {p1, p2}, Lkotlinx/serialization/json/internal/f;-><init>([C)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/n0;->g:Lkotlinx/serialization/json/internal/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/n0;->R(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/internal/o0;[CILkotlin/jvm/internal/n;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    const/16 p2, 0x4000

    new-array p2, p2, [C

    :cond_8
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/n0;-><init>(Lkotlinx/serialization/json/internal/o0;[C)V

    return-void
.end method

.method private final R(I)V
    .registers 7

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/f;->b()[C

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    add-int v3, v2, p1

    invoke-static {v0, v0, v1, v2, v3}, Lkotlin/collections/k;->copyInto([C[CIII)[C

    :cond_12
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v2

    :goto_1a
    if-eq p1, v2, :cond_33

    iget-object v3, p0, Lkotlinx/serialization/json/internal/n0;->e:Lkotlinx/serialization/json/internal/o0;

    sub-int v4, v2, p1

    invoke-interface {v3, v0, p1, v4}, Lkotlinx/serialization/json/internal/o0;->a([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_31

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/f;->f(I)V

    iput v4, p0, Lkotlinx/serialization/json/internal/n0;->f:I

    goto :goto_33

    :cond_31
    add-int/2addr p1, v3

    goto :goto_1a

    :cond_33
    :goto_33
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public G(I)I
    .registers 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    return p1

    :cond_b
    iput p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->u()V

    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    if-nez p1, :cond_26

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    return v0

    :cond_26
    :goto_26
    const/4 p1, -0x1

    return p1
.end method

.method public J(II)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/f;->e(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public L()Z
    .registers 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->I()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_26

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    goto :goto_26

    :cond_13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/f;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_26

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return v1

    :cond_26
    :goto_26
    return v2
.end method

.method protected P()Lkotlinx/serialization/json/internal/f;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/n0;->g:Lkotlinx/serialization/json/internal/f;

    return-object v0
.end method

.method public Q(CI)I
    .registers 6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v1

    :goto_8
    if-ge p2, v1, :cond_14

    invoke-virtual {v0, p2}, Lkotlinx/serialization/json/internal/f;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_11

    return p2

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method protected d(II)V
    .registers 5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->A()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/f;->b()[C

    move-result-object v1

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string p1, "this.append(value, start\u2026x, endIndex - startIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .registers 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->u()V

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    :goto_5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/n0;->G(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/f;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2c

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x9

    if-ne v1, v2, :cond_25

    goto :goto_2c

    :cond_25
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->D(C)Z

    move-result v0

    return v0

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2f
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 6

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(C)V

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/n0;->Q(CI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_29

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/n0;->G(I)I

    move-result v0

    if-eq v0, v2, :cond_1f

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v1, v2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->x(B)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_29
    move v2, v1

    :goto_2a
    if-ge v2, v0, :cond_46

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/f;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_43

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_46
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/n0;->J(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string p2, "keyToMatch"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public l()B
    .registers 5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->u()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    :goto_9
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/n0;->G(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/f;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_20

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return v1

    :cond_20
    move v1, v2

    goto :goto_9

    :cond_22
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/16 v0, 0xa

    return v0
.end method

.method public u()V
    .registers 3

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Lkotlinx/serialization/json/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/f;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lkotlinx/serialization/json/internal/n0;->f:I

    if-le v1, v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/n0;->R(I)V

    return-void
.end method
