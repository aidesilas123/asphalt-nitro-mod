###### Class kotlinx.serialization.json.internal.JsonIteratorKt (kotlinx.serialization.json.internal.JsonIteratorKt)
.class public final Lkotlinx/serialization/json/internal/JsonIteratorKt;
.super Ljava/lang/Object;
.source "JsonIterator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/JsonIteratorKt$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a:\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\nH\u0000\u001a\u0014\u0010\u000b\u001a\u00020\u0004*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0002\u001a\u000c\u0010\u000e\u001a\u00020\u000f*\u00020\u000cH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "JsonIterator",
        "",
        "T",
        "mode",
        "Lkotlinx/serialization/json/DecodeSequenceMode;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "lexer",
        "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "determineFormat",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "suggested",
        "tryConsumeStartArray",
        "",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final JsonIterator(Lkotlinx/serialization/json/DecodeSequenceMode;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/n0;Lkotlinx/serialization/b;)Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/DecodeSequenceMode;",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/internal/n0;",
            "Lkotlinx/serialization/b<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lkotlinx/serialization/json/internal/JsonIteratorKt;->a(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlinx/serialization/json/DecodeSequenceMode;

    move-result-object p0

    sget-object v0, Lkotlinx/serialization/json/internal/JsonIteratorKt$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_41

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3b

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2f

    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AbstractJsonLexer.determineFormat must be called beforehand."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    new-instance p0, Lkotlinx/serialization/json/internal/y;

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/y;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/n0;Lkotlinx/serialization/b;)V

    goto :goto_46

    :cond_41
    new-instance p0, Lkotlinx/serialization/json/internal/z;

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/z;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/n0;Lkotlinx/serialization/b;)V

    :goto_46
    return-object p0
.end method

.method private static final a(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/DecodeSequenceMode;)Lkotlinx/serialization/json/DecodeSequenceMode;
    .registers 3

    sget-object v0, Lkotlinx/serialization/json/internal/JsonIteratorKt$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    invoke-static {p0}, Lkotlinx/serialization/json/internal/JsonIteratorKt;->b(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lkotlinx/serialization/json/DecodeSequenceMode;->b:Lkotlinx/serialization/json/DecodeSequenceMode;

    goto :goto_39

    :cond_1a
    sget-object p0, Lkotlinx/serialization/json/DecodeSequenceMode;->a:Lkotlinx/serialization/json/DecodeSequenceMode;

    goto :goto_39

    :cond_1d
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_23
    invoke-static {p0}, Lkotlinx/serialization/json/internal/JsonIteratorKt;->b(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)Z

    move-result p1

    if-eqz p1, :cond_2c

    sget-object p0, Lkotlinx/serialization/json/DecodeSequenceMode;->b:Lkotlinx/serialization/json/DecodeSequenceMode;

    goto :goto_39

    :cond_2c
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->x(B)Ljava/lang/Void;

    new-instance p0, Lkotlin/f;

    invoke-direct {p0}, Lkotlin/f;-><init>()V

    throw p0

    :cond_37
    sget-object p0, Lkotlinx/serialization/json/DecodeSequenceMode;->a:Lkotlinx/serialization/json/DecodeSequenceMode;

    :goto_39
    return-object p0
.end method

.method private static final b(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)Z
    .registers 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->E()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(B)B

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
