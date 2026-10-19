###### Class kotlinx.serialization.internal.ClassValueCache (kotlinx.serialization.internal.ClassValueCache)
.class final Lkotlinx/serialization/internal/ClassValueCache;
.super Ljava/lang/Object;
.source "Caching.kt"

# interfaces
.implements Lkotlinx/serialization/internal/f1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/f1<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\t\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u001e\u0010\u0003\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005H\u0016J\u0013\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0002\u00a2\u0006\u0002\u0010\u000fR\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR&\u0010\u0003\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ClassValueCache;",
        "T",
        "Lkotlinx/serialization/internal/SerializerCache;",
        "compute",
        "Lkotlin/Function1;",
        "Lkotlin/reflect/KClass;",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "classValue",
        "kotlinx/serialization/internal/ClassValueCache$initClassValue$1",
        "Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;",
        "get",
        "key",
        "",
        "initClassValue",
        "()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlinx/serialization/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlinx/serialization/internal/ClassValueCache$a;


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/KClass<",
            "*>;+",
            "Lkotlinx/serialization/c<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->a:Lkotlin/jvm/b/l;

    invoke-direct {p0}, Lkotlinx/serialization/internal/ClassValueCache;->b()Lkotlinx/serialization/internal/ClassValueCache$a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->b:Lkotlinx/serialization/internal/ClassValueCache$a;

    return-void
.end method

.method public static final synthetic access$getCompute$p(Lkotlinx/serialization/internal/ClassValueCache;)Lkotlin/jvm/b/l;
    .registers 1

    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache;->a:Lkotlin/jvm/b/l;

    return-object p0
.end method

.method private final b()Lkotlinx/serialization/internal/ClassValueCache$a;
    .registers 2

    new-instance v0, Lkotlinx/serialization/internal/ClassValueCache$a;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueCache$a;-><init>(Lkotlinx/serialization/internal/ClassValueCache;)V

    return-object v0
.end method


# virtual methods
.method public a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ClassValueCache;->b:Lkotlinx/serialization/internal/ClassValueCache$a;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/ClassValueCache$a;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/internal/j;

    iget-object p1, p1, Lkotlinx/serialization/internal/j;->a:Lkotlinx/serialization/c;

    return-object p1
.end method

###### Class kotlinx.serialization.internal.ClassValueCache.a (kotlinx.serialization.internal.ClassValueCache$a)
.class public final Lkotlinx/serialization/internal/ClassValueCache$a;
.super Ljava/lang/ClassValue;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueCache;->b()Lkotlinx/serialization/internal/ClassValueCache$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ClassValue<",
        "Lkotlinx/serialization/internal/j<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "kotlinx/serialization/internal/ClassValueCache$initClassValue$1",
        "Ljava/lang/ClassValue;",
        "Lkotlinx/serialization/internal/CacheEntry;",
        "computeValue",
        "type",
        "Ljava/lang/Class;",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/internal/ClassValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ClassValueCache<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/ClassValueCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/ClassValueCache<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache$a;->a:Lkotlinx/serialization/internal/ClassValueCache;

    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method
