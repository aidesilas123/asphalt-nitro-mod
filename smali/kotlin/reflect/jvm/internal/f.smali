###### Class kotlin.reflect.jvm.internal.f (kotlin.reflect.jvm.internal.f)
.class public final Lkotlin/reflect/jvm/internal/f;
.super Lkotlin/reflect/jvm/internal/i;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/i<",
        "TR;>;",
        "Lkotlin/reflect/KMutableProperty0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final o:Lkotlin/reflect/jvm/internal/ReflectProperties$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$b<",
            "Lkotlin/reflect/jvm/internal/f$a<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/i;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/f$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/f$b;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Setter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/f;->o:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/i;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/f$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/f$b;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Setter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/f;->o:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    return-void
.end method


# virtual methods
.method public K()Lkotlin/reflect/jvm/internal/f$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/f$a<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f;->o:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$b;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/f$a;

    return-object v0
.end method

.method public bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->K()Lkotlin/reflect/jvm/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty0$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->K()Lkotlin/reflect/jvm/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f;->K()Lkotlin/reflect/jvm/internal/f$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.f.a (kotlin.reflect.jvm.internal.f$a)
.class public final Lkotlin/reflect/jvm/internal/f$a;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$d;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$d<",
        "TR;>;",
        "Lkotlin/reflect/KMutableProperty0$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final h:Lkotlin/reflect/jvm/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/f<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/f$a;->h:Lkotlin/reflect/jvm/internal/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f$a;->F()Lkotlin/reflect/jvm/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public F()Lkotlin/reflect/jvm/internal/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/f<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f$a;->h:Lkotlin/reflect/jvm/internal/f;

    return-object v0
.end method

.method public G(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f$a;->F()Lkotlin/reflect/jvm/internal/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/f;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a()Lkotlin/reflect/KProperty;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f$a;->F()Lkotlin/reflect/jvm/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/f$a;->G(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.f.b (kotlin.reflect.jvm.internal.f$b)
.class final Lkotlin/reflect/jvm/internal/f$b;
.super Lkotlin/jvm/internal/t;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/f;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/f$a<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/f;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/f;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/f$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/f$a<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/f$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/f$b;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/f$a;-><init>(Lkotlin/reflect/jvm/internal/f;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/f$b;->c()Lkotlin/reflect/jvm/internal/f$a;

    move-result-object v0

    return-object v0
.end method
