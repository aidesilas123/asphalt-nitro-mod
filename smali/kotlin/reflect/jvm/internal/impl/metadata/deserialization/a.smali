###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.a (kotlin.reflect.jvm.internal.impl.metadata.deserialization.a)
.class public abstract Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;
.super Ljava/lang/Object;
.source "BinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 4

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->f:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/k;->getOrNull([II)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, -0x1

    :goto_18
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lkotlin/collections/k;->getOrNull([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_27

    :cond_26
    const/4 v0, -0x1

    :goto_27
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lkotlin/collections/k;->getOrNull([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_34
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->d:I

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_48

    invoke-static {p1}, Lkotlin/collections/k;->asList([I)Ljava/util/List;

    move-result-object v0

    array-length p1, p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_4c

    :cond_48
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_4c
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    return v0
.end method

.method public final c(III)Z
    .registers 7

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-ge v0, p1, :cond_a

    return v2

    :cond_a
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    if-le p1, p2, :cond_f

    return v1

    :cond_f
    if-ge p1, p2, :cond_12

    return v2

    :cond_12
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->d:I

    if-lt p1, p3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public final d(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;)Z
    .registers 4

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->d:I

    invoke-virtual {p0, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c(III)Z

    move-result p1

    return p1
.end method

.method protected final e(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;)Z
    .registers 6

    const-string v0, "ourVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_16

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    if-nez v0, :cond_21

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    if-ne v0, p1, :cond_21

    goto :goto_22

    :cond_16
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    if-ne v0, v3, :cond_21

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    if-gt v0, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    if-ne v0, v1, :cond_30

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    if-ne v0, v1, :cond_30

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->d:I

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->d:I

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->e:Ljava/util/List;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->e:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1
.end method

.method public final f()[I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->f:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->c:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->d:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->e:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->f()[I

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_23

    aget v5, v0, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_15

    const/4 v6, 0x1

    goto :goto_16

    :cond_15
    const/4 v6, 0x0

    :goto_16
    if-nez v6, :cond_19

    goto :goto_23

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "unknown"

    goto :goto_3a

    :cond_2c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, "."

    invoke-static/range {v1 .. v9}, Lkotlin/collections/p;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.a.C0537a (kotlin.reflect.jvm.internal.impl.metadata.deserialization.a$a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;
.super Ljava/lang/Object;
.source "BinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a$a;-><init>()V

    return-void
.end method
