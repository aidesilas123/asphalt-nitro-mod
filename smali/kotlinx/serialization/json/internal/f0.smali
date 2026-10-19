###### Class kotlinx.serialization.json.internal.JsonTreeDecoder (kotlinx.serialization.json.internal.f0)
.class Lkotlinx/serialization/json/internal/f0;
.super Lkotlinx/serialization/json/internal/a;
.source "TreeJsonDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0012\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\tH\u0016J \u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0007H\u0014J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0008\u0010\u001b\u001a\u00020\u000cH\u0016J\u0018\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000eH\u0014J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\tH\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeDecoder;",
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "value",
        "Lkotlinx/serialization/json/JsonObject;",
        "polyDiscriminator",
        "",
        "polyDescriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V",
        "forceNull",
        "",
        "position",
        "",
        "getValue",
        "()Lkotlinx/serialization/json/JsonObject;",
        "absenceIsNull",
        "descriptor",
        "index",
        "beginStructure",
        "Lkotlinx/serialization/encoding/CompositeDecoder;",
        "coerceInputValue",
        "tag",
        "currentElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "decodeElementIndex",
        "decodeNotNullMark",
        "elementName",
        "desc",
        "endStructure",
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


# instance fields
.field private final g:Lkotlinx/serialization/json/l;

.field private final h:Ljava/lang/String;

.field private final i:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/l;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 6

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/a;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/d;Lkotlin/jvm/internal/n;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/f0;->g:Lkotlinx/serialization/json/l;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/f0;->h:Ljava/lang/String;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/f0;->i:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/l;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/n;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move-object p4, v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/f0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/l;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method private final u0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->d()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->f()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/f0;->k:Z

    return p1
.end method

.method private final v0(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z
    .registers 8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->d()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_19

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/f0;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/d;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/json/j;

    if-eqz p2, :cond_19

    goto :goto_44

    :cond_19
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/d;

    move-result-object p2

    sget-object v3, Lkotlinx/serialization/descriptors/d$b;->a:Lkotlinx/serialization/descriptors/d$b;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/f0;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/d;

    move-result-object p2

    instance-of p3, p2, Lkotlinx/serialization/json/n;

    const/4 v3, 0x0

    if-eqz p3, :cond_31

    check-cast p2, Lkotlinx/serialization/json/n;

    goto :goto_32

    :cond_31
    move-object p2, v3

    :goto_32
    if-eqz p2, :cond_38

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/n;)Ljava/lang/String;

    move-result-object v3

    :cond_38
    if-nez v3, :cond_3b

    goto :goto_43

    :cond_3b
    invoke-static {p1, v0, v3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_43

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v1, 0x0

    :goto_44
    return v1
.end method


# virtual methods
.method public D()Z
    .registers 2

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/f0;->k:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lkotlinx/serialization/json/internal/a;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected a0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 7

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->j()Z

    move-result v1

    if-nez v1, :cond_12

    return-object v0

    :cond_12
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/l;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    :cond_21
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->d()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonSchemaCacheKt;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/s;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonAlternativeNamesKey()Lkotlinx/serialization/json/internal/s$a;

    move-result-object v2

    new-instance v3, Lkotlinx/serialization/json/internal/f0$a;

    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/f0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3}, Lkotlinx/serialization/json/internal/s;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/s$a;Lkotlin/jvm/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/l;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5a

    goto :goto_62

    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_62

    const/4 v3, 0x1

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v3, 0x0

    :goto_63
    if-eqz v3, :cond_44

    goto :goto_67

    :cond_66
    const/4 v2, 0x0

    :goto_67
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move-object v0, v2

    :goto_6d
    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f0;->i:Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-ne p1, v0, :cond_a

    return-object p0

    :cond_a
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/a;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->g()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/d;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/descriptors/b;

    if-eqz v0, :cond_16

    goto :goto_7f

    :cond_16
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->j()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lkotlinx/serialization/internal/JsonInternalDependenciesKt;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object p1

    goto :goto_4b

    :cond_23
    invoke-static {p1}, Lkotlinx/serialization/internal/JsonInternalDependenciesKt;->jsonCachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->d()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonSchemaCacheKt;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/s;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonAlternativeNamesKey()Lkotlinx/serialization/json/internal/s$a;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/s;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/s$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    if-nez p1, :cond_47

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_47
    invoke-static {v0, p1}, Lkotlin/collections/h0;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    :goto_4b
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_57
    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v2, p0, Lkotlinx/serialization/json/internal/f0;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    goto :goto_57

    :cond_72
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/l;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->UnknownKeyException(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/v;

    move-result-object p1

    throw p1

    :cond_7f
    :goto_7f
    return-void
.end method

.method protected e0(Ljava/lang/String;)Lkotlinx/serialization/json/d;
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/d0;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/d;

    return-object p1
.end method

.method public o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lkotlinx/serialization/json/internal/f0;->j:I

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v1

    if-ge v0, v1, :cond_3d

    iget v0, p0, Lkotlinx/serialization/json/internal/f0;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/f0;->j:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/u0;->b0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/f0;->j:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/f0;->k:Z

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/f0;->u0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2e
    iget-object v2, p0, Lkotlinx/serialization/json/internal/a;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->d()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-direct {p0, p1, v1, v0}, Lkotlinx/serialization/json/internal/f0;->v0(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3c
    return v1

    :cond_3d
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic s0()Lkotlinx/serialization/json/d;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0;->w0()Lkotlinx/serialization/json/l;

    move-result-object v0

    return-object v0
.end method

.method public w0()Lkotlinx/serialization/json/l;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/f0;->g:Lkotlinx/serialization/json/l;

    return-object v0
.end method

###### Class kotlinx.serialization.json.internal.JsonTreeDecoder.a (kotlinx.serialization.json.internal.f0$a)
.class final synthetic Lkotlinx/serialization/json/internal/f0$a;
.super Lkotlin/jvm/internal/r;
.source "TreeJsonDecoder.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/f0;->a0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lkotlinx/serialization/json/internal/JsonNamesMapKt;

    const/4 v1, 0x0

    const-string v4, "buildAlternativeNamesMap"

    const-string v5, "buildAlternativeNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/f0$a;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->buildAlternativeNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
