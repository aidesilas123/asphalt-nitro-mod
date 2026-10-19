###### Class kotlin.reflect.jvm.internal.j (kotlin.reflect.jvm.internal.j)
.class public Lkotlin/reflect/jvm/internal/j;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
        "TR;>;",
        "Lkotlin/reflect/KProperty1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$b<",
            "Lkotlin/reflect/jvm/internal/j$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field private final n:Lkotlin/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/i<",
            "Ljava/lang/reflect/Field;",
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

    new-instance p1, Lkotlin/reflect/jvm/internal/j$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/j$b;-><init>(Lkotlin/reflect/jvm/internal/j;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/j$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/j$c;-><init>(Lkotlin/reflect/jvm/internal/j;)V

    invoke-static {p1, p2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j;->n:Lkotlin/i;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/j$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/j$b;-><init>(Lkotlin/reflect/jvm/internal/j;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/j$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/j$c;-><init>(Lkotlin/reflect/jvm/internal/j;)V

    invoke-static {p1, p2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j;->n:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j;->J()Lkotlin/reflect/jvm/internal/j$a;

    move-result-object v0

    return-object v0
.end method

.method public J()Lkotlin/reflect/jvm/internal/j$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/j$a<",
            "TT;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/j;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$b;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/j$a;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/j;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->E(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j;->J()Lkotlin/reflect/jvm/internal/j$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$b;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j;->J()Lkotlin/reflect/jvm/internal/j$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty1$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j;->J()Lkotlin/reflect/jvm/internal/j$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.j.a (kotlin.reflect.jvm.internal.j$a)
.class public final Lkotlin/reflect/jvm/internal/j$a;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$c<",
        "TR;>;",
        "Lkotlin/reflect/KProperty1$a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final h:Lkotlin/reflect/jvm/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/j<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/j<",
            "TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j$a;->h:Lkotlin/reflect/jvm/internal/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j$a;->F()Lkotlin/reflect/jvm/internal/j;

    move-result-object v0

    return-object v0
.end method

.method public F()Lkotlin/reflect/jvm/internal/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/j<",
            "TT;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/j$a;->h:Lkotlin/reflect/jvm/internal/j;

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/KProperty;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j$a;->F()Lkotlin/reflect/jvm/internal/j;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j$a;->F()Lkotlin/reflect/jvm/internal/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.j.b (kotlin.reflect.jvm.internal.j$b)
.class final Lkotlin/reflect/jvm/internal/j$b;
.super Lkotlin/jvm/internal/t;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/j;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/j$a<",
        "TT;+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/j;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/j;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j$b;->a:Lkotlin/reflect/jvm/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/j$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/j$a<",
            "TT;TR;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/j$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/j$b;->a:Lkotlin/reflect/jvm/internal/j;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/j$a;-><init>(Lkotlin/reflect/jvm/internal/j;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j$b;->c()Lkotlin/reflect/jvm/internal/j$a;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.j.c (kotlin.reflect.jvm.internal.j$c)
.class final Lkotlin/reflect/jvm/internal/j$c;
.super Lkotlin/jvm/internal/t;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/j;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/j;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/j;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j$c;->a:Lkotlin/reflect/jvm/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/j$c;->a:Lkotlin/reflect/jvm/internal/j;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->C()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j$c;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
