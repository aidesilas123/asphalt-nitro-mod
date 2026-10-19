###### Class kotlinx.serialization.json.internal.ComposersKt (kotlinx.serialization.json.internal.ComposersKt)
.class public final Lkotlinx/serialization/json/internal/ComposersKt;
.super Ljava/lang/Object;
.source "Composers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Composer",
        "Lkotlinx/serialization/json/internal/Composer;",
        "sb",
        "Lkotlinx/serialization/json/internal/JsonWriter;",
        "json",
        "Lkotlinx/serialization/json/Json;",
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
.method public static final Composer(Lkotlinx/serialization/json/internal/l0;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/j;
    .registers 3

    const-string v0, "sb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lkotlinx/serialization/json/internal/r;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/internal/r;-><init>(Lkotlinx/serialization/json/internal/l0;Lkotlinx/serialization/json/Json;)V

    goto :goto_1f

    :cond_1a
    new-instance v0, Lkotlinx/serialization/json/internal/j;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/internal/j;-><init>(Lkotlinx/serialization/json/internal/l0;)V

    :goto_1f
    return-object v0
.end method
