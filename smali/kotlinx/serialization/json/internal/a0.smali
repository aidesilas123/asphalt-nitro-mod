###### Class kotlinx.serialization.json.internal.JsonPath (kotlinx.serialization.json.internal.a0)
.class public final Lkotlinx/serialization/json/internal/a0;
.super Ljava/lang/Object;
.source "JsonPath.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/a0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\rJ\u0008\u0010\u0014\u001a\u00020\rH\u0002J\u0008\u0010\u0015\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonPath;",
        "",
        "()V",
        "currentDepth",
        "",
        "currentObjectPath",
        "",
        "[Ljava/lang/Object;",
        "indicies",
        "",
        "getPath",
        "",
        "popDescriptor",
        "",
        "prettyString",
        "it",
        "pushDescriptor",
        "sd",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "resetCurrentMapKey",
        "resize",
        "toString",
        "updateCurrentMapKey",
        "key",
        "updateDescriptorIndex",
        "index",
        "Tombstone",
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
.field private a:[Ljava/lang/Object;

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_c
    const/4 v3, -0x1

    if-ge v2, v0, :cond_14

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    iput-object v1, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    iput v3, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    return-void
.end method

.method private final e()V
    .registers 4

    iget v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_6b

    iget-object v3, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    aget-object v3, v3, v2

    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v5, "]"

    const-string v6, "["

    if-eqz v4, :cond_53

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/d;

    move-result-object v4

    sget-object v7, Lkotlinx/serialization/descriptors/e$b;->a:Lkotlinx/serialization/descriptors/e$b;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v3, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_68

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_40
    iget-object v4, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    aget v4, v4, v2

    if-ltz v4, :cond_68

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_53
    sget-object v4, Lkotlinx/serialization/json/internal/a0$a;->a:Lkotlinx/serialization/json/internal/a0$a;

    if-eq v3, v4, :cond_68

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()V
    .registers 6

    iget v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    aget v2, v1, v0

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-ne v2, v4, :cond_f

    aput v3, v1, v0

    add-int/2addr v0, v3

    iput v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    :cond_f
    iget v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    if-eq v0, v3, :cond_16

    add-int/2addr v0, v3

    iput v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    :cond_16
    return-void
.end method

.method public final c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 4

    const-string v0, "sd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a0;->e()V

    :cond_13
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    return-void
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    aget v0, v0, v1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    sget-object v2, Lkotlinx/serialization/json/internal/a0$a;->a:Lkotlinx/serialization/json/internal/a0$a;

    aput-object v2, v0, v1

    :cond_f
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    aget v0, v0, v1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v1, v0, :cond_15

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a0;->e()V

    :cond_15
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a0;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    aput v2, p1, v1

    return-void
.end method

.method public final g(I)V
    .registers 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/a0;->b:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/a0;->c:I

    aput p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
