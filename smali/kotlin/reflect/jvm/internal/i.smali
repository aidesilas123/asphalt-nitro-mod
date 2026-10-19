###### Class kotlin.reflect.jvm.internal.i (kotlin.reflect.jvm.internal.i)
.class public Lkotlin/reflect/jvm/internal/i;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
        "TR;>;",
        "Lkotlin/reflect/KProperty0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$b<",
            "Lkotlin/reflect/jvm/internal/i$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final n:Lkotlin/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/i<",
            "Ljava/lang/Object;",
            ">;"
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

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/i$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/i$b;-><init>(Lkotlin/reflect/jvm/internal/i;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/i$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/i$c;-><init>(Lkotlin/reflect/jvm/internal/i;)V

    invoke-static {p1, p2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i;->n:Lkotlin/i;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/i$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/i$b;-><init>(Lkotlin/reflect/jvm/internal/i;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/i$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/i$c;-><init>(Lkotlin/reflect/jvm/internal/i;)V

    invoke-static {p1, p2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i;->n:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i;->J()Lkotlin/reflect/jvm/internal/i$a;

    move-result-object v0

    return-object v0
.end method

.method public J()Lkotlin/reflect/jvm/internal/i$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/i$a<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/i;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$b;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/i$a;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i;->J()Lkotlin/reflect/jvm/internal/i$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/i;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$b;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i;->J()Lkotlin/reflect/jvm/internal/i$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty0$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i;->J()Lkotlin/reflect/jvm/internal/i$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.i.a (kotlin.reflect.jvm.internal.i$a)
.class public final Lkotlin/reflect/jvm/internal/i$a;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/i;
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
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$c<",
        "TR;>;",
        "Lkotlin/reflect/KProperty0$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final h:Lkotlin/reflect/jvm/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/i<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/i<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i$a;->h:Lkotlin/reflect/jvm/internal/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i$a;->F()Lkotlin/reflect/jvm/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public F()Lkotlin/reflect/jvm/internal/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/i<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/i$a;->h:Lkotlin/reflect/jvm/internal/i;

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/KProperty;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i$a;->F()Lkotlin/reflect/jvm/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i$a;->F()Lkotlin/reflect/jvm/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/i;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.i.b (kotlin.reflect.jvm.internal.i$b)
.class final Lkotlin/reflect/jvm/internal/i$b;
.super Lkotlin/jvm/internal/t;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/i;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/i$a<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/i;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i$b;->a:Lkotlin/reflect/jvm/internal/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/i$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/i$a<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/i$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/i$b;->a:Lkotlin/reflect/jvm/internal/i;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/i$a;-><init>(Lkotlin/reflect/jvm/internal/i;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/i$b;->c()Lkotlin/reflect/jvm/internal/i$a;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.i.c (kotlin.reflect.jvm.internal.i$c)
.class final Lkotlin/reflect/jvm/internal/i$c;
.super Lkotlin/jvm/internal/t;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/i;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/i;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i$c;->a:Lkotlin/reflect/jvm/internal/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/i$c;->a:Lkotlin/reflect/jvm/internal/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->C()Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/i$c;->a:Lkotlin/reflect/jvm/internal/i;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->D()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->E(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
