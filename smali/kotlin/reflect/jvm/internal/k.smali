###### Class kotlin.reflect.jvm.internal.k (kotlin.reflect.jvm.internal.k)
.class public Lkotlin/reflect/jvm/internal/k;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
        "TR;>;",
        "Lkotlin/reflect/KProperty2<",
        "TD;TE;TR;>;"
    }
.end annotation


# instance fields
.field private final m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$b<",
            "Lkotlin/reflect/jvm/internal/k$a<",
            "TD;TE;TR;>;>;"
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
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/k$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/k$b;-><init>(Lkotlin/reflect/jvm/internal/k;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/k;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/k$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/k$c;-><init>(Lkotlin/reflect/jvm/internal/k;)V

    invoke-static {p1, p2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/k;->n:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k;->K()Lkotlin/reflect/jvm/internal/k$a;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k;->K()Lkotlin/reflect/jvm/internal/k$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K()Lkotlin/reflect/jvm/internal/k$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/k$a<",
            "TD;TE;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/k;->m:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$b;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/k$a;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$b;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k;->K()Lkotlin/reflect/jvm/internal/k$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/k;->J(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/k;->n:Lkotlin/i;

    invoke-interface {p2}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->E(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.k.a (kotlin.reflect.jvm.internal.k$a)
.class public final Lkotlin/reflect/jvm/internal/k$a;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty$b;
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final h:Lkotlin/reflect/jvm/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/k<",
            "TD;TE;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/k<",
            "TD;TE;+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/k$a;->h:Lkotlin/reflect/jvm/internal/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k$a;->F()Lkotlin/reflect/jvm/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public F()Lkotlin/reflect/jvm/internal/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/k<",
            "TD;TE;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/k$a;->h:Lkotlin/reflect/jvm/internal/k;

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/KProperty;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k$a;->F()Lkotlin/reflect/jvm/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k$a;->F()Lkotlin/reflect/jvm/internal/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/k;->J(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.k.b (kotlin.reflect.jvm.internal.k$b)
.class final Lkotlin/reflect/jvm/internal/k$b;
.super Lkotlin/jvm/internal/t;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/k;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/k$a<",
        "TD;TE;+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/k;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/k;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/k$b;->a:Lkotlin/reflect/jvm/internal/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/k$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/k$a<",
            "TD;TE;TR;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/k$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/k$b;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/k$a;-><init>(Lkotlin/reflect/jvm/internal/k;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k$b;->c()Lkotlin/reflect/jvm/internal/k$a;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.k.c (kotlin.reflect.jvm.internal.k$c)
.class final Lkotlin/reflect/jvm/internal/k$c;
.super Lkotlin/jvm/internal/t;
.source "KProperty2Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/k;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/k;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/k;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/k$c;->a:Lkotlin/reflect/jvm/internal/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/k$c;->a:Lkotlin/reflect/jvm/internal/k;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->C()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/k$c;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
