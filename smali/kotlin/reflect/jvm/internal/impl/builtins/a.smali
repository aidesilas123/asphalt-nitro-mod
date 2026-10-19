###### Class kotlin.reflect.jvm.internal.impl.builtins.a (kotlin.reflect.jvm.internal.impl.builtins.a)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/builtins/a;
.super Ljava/lang/Object;
.source "BuiltInsLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->b:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/h;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/c;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/a;",
            "Z)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t;"
        }
    .end annotation
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.a.C0513a (kotlin.reflect.jvm.internal.impl.builtins.a$a)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a$a;
.super Ljava/lang/Object;
.source "BuiltInsLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlin/i;

.field static final synthetic b:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->b:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->a:Lkotlin/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/builtins/a;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->a:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.a.C0513a.C0514a (kotlin.reflect.jvm.internal.impl.builtins.a$a$a)
.class final Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;
.super Lkotlin/jvm/internal/t;
.source "BuiltInsLoader.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/builtins/a;
    .registers 3

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    const-string v1, "implementations"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/p;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;->c()Lkotlin/reflect/jvm/internal/impl/builtins/a;

    move-result-object v0

    return-object v0
.end method
