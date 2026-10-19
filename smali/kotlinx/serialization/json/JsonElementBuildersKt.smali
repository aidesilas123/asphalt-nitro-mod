###### Class kotlinx.serialization.json.JsonElementBuildersKt (kotlinx.serialization.json.JsonElementBuildersKt)
.class public final Lkotlinx/serialization/json/JsonElementBuildersKt;
.super Ljava/lang/Object;
.source "JsonElementBuilders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0010\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a2\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a2\u0010\u0007\u001a\u00020\u00082\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a\u0019\u0010\n\u001a\u00020\u000b*\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\r\u001a\u0016\u0010\n\u001a\u00020\u000b*\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000eH\u0007\u001a\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000f\u001a\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0010\u001a#\u0010\u0011\u001a\u00020\u000b*\u00020\u00042\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u001a#\u0010\u0012\u001a\u00020\u000b*\u00020\u00042\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u001a#\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0016\u001a \u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000eH\u0007\u001a\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000f\u001a\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0010\u001a-\u0010\u0017\u001a\u0004\u0018\u00010\u0014*\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00102\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u001a-\u0010\u0018\u001a\u0004\u0018\u00010\u0014*\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00102\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0019"
    }
    d2 = {
        "buildJsonArray",
        "Lkotlinx/serialization/json/JsonArray;",
        "builderAction",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/json/JsonArrayBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "buildJsonObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "Lkotlinx/serialization/json/JsonObjectBuilder;",
        "add",
        "",
        "value",
        "(Lkotlinx/serialization/json/JsonArrayBuilder;Ljava/lang/Boolean;)Z",
        "",
        "",
        "",
        "addJsonArray",
        "addJsonObject",
        "put",
        "Lkotlinx/serialization/json/JsonElement;",
        "key",
        "(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;",
        "putJsonArray",
        "putJsonObject",
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
.method public static final add(Lkotlinx/serialization/json/b;Ljava/lang/Boolean;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/Boolean;)Lkotlinx/serialization/json/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/json/d;)Z

    move-result p0

    return p0
.end method

.method public static final add(Lkotlinx/serialization/json/b;Ljava/lang/Number;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/Number;)Lkotlinx/serialization/json/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/json/d;)Z

    move-result p0

    return p0
.end method

.method public static final add(Lkotlinx/serialization/json/b;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/json/d;)Z

    move-result p0

    return p0
.end method

.method public static final add(Lkotlinx/serialization/json/b;Ljava/lang/Void;)Z
    .registers 2

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlinx/serialization/json/j;->c:Lkotlinx/serialization/json/j;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/json/d;)Z

    move-result p0

    return p0
.end method

.method public static final addJsonArray(Lkotlinx/serialization/json/b;Lkotlin/jvm/b/l;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/b;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlinx/serialization/json/b;",
            "Lkotlin/v;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/b;

    invoke-direct {v0}, Lkotlinx/serialization/json/b;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/b;->b()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/json/d;)Z

    move-result p0

    return p0
.end method

.method public static final addJsonObject(Lkotlinx/serialization/json/b;Lkotlin/jvm/b/l;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/b;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlinx/serialization/json/m;",
            "Lkotlin/v;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/m;

    invoke-direct {v0}, Lkotlinx/serialization/json/m;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/m;->a()Lkotlinx/serialization/json/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/json/d;)Z

    move-result p0

    return p0
.end method

.method public static final buildJsonArray(Lkotlin/jvm/b/l;)Lkotlinx/serialization/json/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlinx/serialization/json/b;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/serialization/json/a;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/b;

    invoke-direct {v0}, Lkotlinx/serialization/json/b;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/b;->b()Lkotlinx/serialization/json/a;

    move-result-object p0

    return-object p0
.end method

.method public static final buildJsonObject(Lkotlin/jvm/b/l;)Lkotlinx/serialization/json/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlinx/serialization/json/m;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/serialization/json/l;"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/m;

    invoke-direct {v0}, Lkotlinx/serialization/json/m;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/m;->a()Lkotlinx/serialization/json/l;

    move-result-object p0

    return-object p0
.end method

.method public static final put(Lkotlinx/serialization/json/m;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/d;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/Boolean;)Lkotlinx/serialization/json/n;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/m;->b(Ljava/lang/String;Lkotlinx/serialization/json/d;)Lkotlinx/serialization/json/d;

    move-result-object p0

    return-object p0
.end method

.method public static final put(Lkotlinx/serialization/json/m;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/d;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/Number;)Lkotlinx/serialization/json/n;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/m;->b(Ljava/lang/String;Lkotlinx/serialization/json/d;)Lkotlinx/serialization/json/d;

    move-result-object p0

    return-object p0
.end method

.method public static final put(Lkotlinx/serialization/json/m;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/d;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/n;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/m;->b(Ljava/lang/String;Lkotlinx/serialization/json/d;)Lkotlinx/serialization/json/d;

    move-result-object p0

    return-object p0
.end method

.method public static final put(Lkotlinx/serialization/json/m;Ljava/lang/String;Ljava/lang/Void;)Lkotlinx/serialization/json/d;
    .registers 3

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlinx/serialization/json/j;->c:Lkotlinx/serialization/json/j;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/m;->b(Ljava/lang/String;Lkotlinx/serialization/json/d;)Lkotlinx/serialization/json/d;

    move-result-object p0

    return-object p0
.end method

.method public static final putJsonArray(Lkotlinx/serialization/json/m;Ljava/lang/String;Lkotlin/jvm/b/l;)Lkotlinx/serialization/json/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/m;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlinx/serialization/json/b;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/serialization/json/d;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/b;

    invoke-direct {v0}, Lkotlinx/serialization/json/b;-><init>()V

    invoke-interface {p2, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/b;->b()Lkotlinx/serialization/json/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/m;->b(Ljava/lang/String;Lkotlinx/serialization/json/d;)Lkotlinx/serialization/json/d;

    move-result-object p0

    return-object p0
.end method

.method public static final putJsonObject(Lkotlinx/serialization/json/m;Ljava/lang/String;Lkotlin/jvm/b/l;)Lkotlinx/serialization/json/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/m;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlinx/serialization/json/m;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/serialization/json/d;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/m;

    invoke-direct {v0}, Lkotlinx/serialization/json/m;-><init>()V

    invoke-interface {p2, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/m;->a()Lkotlinx/serialization/json/l;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/m;->b(Ljava/lang/String;Lkotlinx/serialization/json/d;)Lkotlinx/serialization/json/d;

    move-result-object p0

    return-object p0
.end method
