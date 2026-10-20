###### Class kotlinx.serialization.json.internal.StreamingJsonDecoderKt (kotlinx.serialization.json.internal.StreamingJsonDecoderKt)
.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoderKt;
.super Ljava/lang/Object;
.source "StreamingJsonDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a(\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a9\u0010\u0008\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00020\u000c\u00a2\u0006\u0002\u0008\rH\u0082\u0008\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "decodeStringToJsonTree",
        "Lkotlinx/serialization/json/JsonElement;",
        "T",
        "Lkotlinx/serialization/json/Json;",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "source",
        "",
        "parseString",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "expectedType",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.method public static final decodeStringToJsonTree(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/b;Ljava/lang/String;)Lkotlinx/serialization/json/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/b<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/json/d;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/r0;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/r0;-><init>(Ljava/lang/String;)V

    new-instance p2, Lkotlinx/serialization/json/internal/p0;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->a:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/p0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/p0$a;)V

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/p0;->g()Lkotlinx/serialization/json/d;

    move-result-object p0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->v()V

    return-object p0
.end method
