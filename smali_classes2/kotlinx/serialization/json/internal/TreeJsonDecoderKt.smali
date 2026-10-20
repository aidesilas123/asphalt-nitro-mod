###### Class kotlinx.serialization.json.internal.TreeJsonDecoderKt (kotlinx.serialization.json.internal.TreeJsonDecoderKt)
.class public final Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;
.super Ljava/lang/Object;
.source "TreeJsonDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007\u001a5\u0010\u0008\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u000b2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0006H\u0000\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "readJson",
        "T",
        "Lkotlinx/serialization/json/Json;",
        "element",
        "Lkotlinx/serialization/json/JsonElement;",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "readPolymorphicJson",
        "discriminator",
        "",
        "Lkotlinx/serialization/json/JsonObject;",
        "(Lkotlinx/serialization/json/Json;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
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
.method public static final readJson(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/d;Lkotlinx/serialization/b;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/d;",
            "Lkotlinx/serialization/b<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/serialization/json/l;

    if-eqz v0, :cond_23

    new-instance v0, Lkotlinx/serialization/json/internal/f0;

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/json/l;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lkotlinx/serialization/json/internal/f0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/l;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/n;)V

    goto :goto_44

    :cond_23
    instance-of v0, p1, Lkotlinx/serialization/json/a;

    if-eqz v0, :cond_2f

    new-instance v0, Lkotlinx/serialization/json/internal/h0;

    check-cast p1, Lkotlinx/serialization/json/a;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/internal/h0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/a;)V

    goto :goto_44

    :cond_2f
    instance-of v0, p1, Lkotlinx/serialization/json/g;

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_3b

    :cond_35
    sget-object v0, Lkotlinx/serialization/json/j;->c:Lkotlinx/serialization/json/j;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3b
    if-eqz v0, :cond_49

    new-instance v0, Lkotlinx/serialization/json/internal/b0;

    check-cast p1, Lkotlinx/serialization/json/n;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/internal/b0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/n;)V

    :goto_44
    invoke-virtual {v0, p2}, Lkotlinx/serialization/json/internal/a;->G(Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_49
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0
.end method

.method public static final readPolymorphicJson(Lkotlinx/serialization/json/Json;Ljava/lang/String;Lkotlinx/serialization/json/l;Lkotlinx/serialization/b;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/l;",
            "Lkotlinx/serialization/b<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discriminator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/f0;

    invoke-interface {p3}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-direct {v0, p0, p2, p1, v1}, Lkotlinx/serialization/json/internal/f0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/l;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {v0, p3}, Lkotlinx/serialization/json/internal/a;->G(Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
