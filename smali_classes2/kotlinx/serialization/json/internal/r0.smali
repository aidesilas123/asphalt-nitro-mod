###### Class kotlinx.serialization.json.internal.StringJsonLexer (kotlinx.serialization.json.internal.r0)
.class public final Lkotlinx/serialization/json/internal/r0;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "StringJsonLexer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0008H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\r\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0015\u001a\u00020\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StringJsonLexer;",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "source",
        "",
        "(Ljava/lang/String;)V",
        "getSource",
        "()Ljava/lang/String;",
        "canConsumeValue",
        "",
        "consumeKeyString",
        "consumeLeadingMatchingValue",
        "keyToMatch",
        "isLenient",
        "consumeNextToken",
        "",
        "",
        "expected",
        "",
        "prefetchOrEof",
        "",
        "position",
        "skipWhitespaces",
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
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/r0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G(I)I
    .registers 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, -0x1

    :goto_c
    return p1
.end method

.method public I()I
    .registers 4

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v0

    :cond_6
    :goto_6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_28

    const/16 v2, 0xa

    if-eq v1, v2, :cond_28

    const/16 v2, 0xd

    if-eq v1, v2, :cond_28

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2b
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return v0
.end method

.method public L()Z
    .registers 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->I()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    goto :goto_26

    :cond_13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

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

.method protected P()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/r0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 5

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    :goto_7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_31

    const/16 v3, 0xa

    if-eq v2, v3, :cond_31

    const/16 v3, 0xd

    if-eq v2, v3, :cond_31

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2a

    goto :goto_31

    :cond_2a
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->D(C)Z

    move-result v0

    return v0

    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_34
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return v1
.end method

.method public j()Ljava/lang/String;
    .registers 8

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/r0;->n(C)V

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    move v2, v0

    :goto_19
    if-ge v2, v1, :cond_35

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_32

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_35
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->x(B)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public k(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    :try_start_7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->l()B

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_3e

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_12

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return-object v3

    :cond_12
    if-eqz p2, :cond_19

    :try_start_14
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->s()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->l()B

    move-result p1
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_3e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2d

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return-object v3

    :cond_2d
    if-eqz p2, :cond_34

    :try_start_2f
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Ljava/lang/String;

    move-result-object p1

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->s()Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3e

    :goto_38
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return-object p1

    :cond_3b
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    return-object v3

    :catchall_3e
    move-exception p1

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    throw p1
.end method

.method public l()B
    .registers 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    return v1

    :cond_21
    const/16 v0, 0xa

    return v0
.end method

.method public n(C)V
    .registers 5

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->N(C)V

    :cond_8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/r0;->P()Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_c
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_36

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_c

    const/16 v2, 0xa

    if-eq v1, v2, :cond_c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_c

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2f

    goto :goto_c

    :cond_2f
    if-ne v1, p1, :cond_32

    return-void

    :cond_32
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->N(C)V

    goto :goto_c

    :cond_36
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->N(C)V

    return-void
.end method
