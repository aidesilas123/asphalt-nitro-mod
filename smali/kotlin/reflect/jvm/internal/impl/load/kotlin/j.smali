###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.j (kotlin.reflect.jvm.internal.impl.load.kotlin.j)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;
.super Ljava/lang/Object;
.source "KotlinClassFinder.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.end method

.method public abstract c(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.j.a (kotlin.reflect.jvm.internal.impl.load.kotlin.j$a)
.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.super Ljava/lang/Object;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .registers 3

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    move-result-object v1

    :cond_10
    return-object v1
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.j.a.C0535a (kotlin.reflect.jvm.internal.impl.load.kotlin.j$a$a)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:[B


# virtual methods
.method public final b()[B
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;->a:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;

    if-eqz v0, :cond_13

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;->a:[B

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;->a:[B

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;->a:[B

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassFileContent(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;->a:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.j.a.b (kotlin.reflect.jvm.internal.impl.load.kotlin.j$a$b)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;)V
    .registers 3

    const-string v0, "kotlinJvmBinaryClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;

    if-eqz v0, :cond_13

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KotlinClass(kotlinJvmBinaryClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
