###### Class kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypesKt (kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypesKt)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;
.super Ljava/lang/Object;
.source "ReflectionTypes.kt"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/name/FqName;

# The value of this static final field might be set in the static constructor
.field private static final b:Ljava/lang/String; = "KProperty"

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "KMutableProperty"

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "KFunction"

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "KSuspendFunction"

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin.reflect"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->a:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "KProperty"

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->b:Ljava/lang/String;

    const-string v1, "KMutableProperty"

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->c:Ljava/lang/String;

    const-string v2, "KFunction"

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->d:Ljava/lang/String;

    const-string v3, "KSuspendFunction"

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->e:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->f:Ljava/util/List;

    return-void
.end method

.method public static final getKOTLIN_REFLECT_FQ_NAME()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypesKt;->a:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object v0
.end method
