###### Class com.google.common.reflect.f (com.google.common.reflect.f)
.class abstract Lcom/google/common/reflect/f;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/f;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/reflect/Type;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_73

    aget-object v2, p1, v1

    if-eqz v2, :cond_70

    iget-object v3, p0, Lcom/google/common/reflect/f;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_70

    :cond_11
    :try_start_11
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/f;->e(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_70

    :cond_1c
    instance-of v3, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_27

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/f;->f(Ljava/lang/reflect/WildcardType;)V

    goto :goto_70

    :cond_27
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_32

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/f;->d(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_70

    :cond_32
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_3d

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/f;->b(Ljava/lang/Class;)V

    goto :goto_70

    :cond_3d
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_48

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/f;->c(Ljava/lang/reflect/GenericArrayType;)V

    goto :goto_70

    :cond_48
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_69
    .catchall {:try_start_11 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p1

    iget-object v0, p0, Lcom/google/common/reflect/f;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_70
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_73
    return-void
.end method

.method abstract b(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/reflect/GenericArrayType;)V
.end method

.method abstract d(Ljava/lang/reflect/ParameterizedType;)V
.end method

.method abstract e(Ljava/lang/reflect/TypeVariable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation
.end method

.method abstract f(Ljava/lang/reflect/WildcardType;)V
.end method
