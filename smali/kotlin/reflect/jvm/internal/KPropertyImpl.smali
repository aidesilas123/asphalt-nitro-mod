###### Class kotlin.reflect.jvm.internal.KPropertyImpl (kotlin.reflect.jvm.internal.KPropertyImpl)
.class public abstract Lkotlin/reflect/jvm/internal/KPropertyImpl;
.super Lkotlin/reflect/jvm/internal/KCallableImpl;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/KPropertyImpl$a;,
        Lkotlin/reflect/jvm/internal/KPropertyImpl$c;,
        Lkotlin/reflect/jvm/internal/KPropertyImpl$d;,
        Lkotlin/reflect/jvm/internal/KPropertyImpl$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KCallableImpl<",
        "TR;>;",
        "Lkotlin/reflect/KProperty<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;

.field public static final f:Lkotlin/reflect/jvm/internal/KPropertyImpl$b;


# instance fields
.field private final g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$b<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/reflect/jvm/internal/ReflectProperties$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ReflectProperties$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->f:Lkotlin/reflect/jvm/internal/KPropertyImpl$b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->i:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->j:Ljava/lang/String;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->k:Ljava/lang/String;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->l:Ljava/lang/Object;

    new-instance p1, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy {\u2026y -> null\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    new-instance p1, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;)V

    invoke-static {p4, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Ljava/lang/Object;Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    move-result-object p1

    const-string p2, "ReflectProperties.lazySo\u2026or(name, signature)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->h:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .registers 10

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->e()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/r;->b:Lkotlin/reflect/jvm/internal/r;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/r;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lkotlin/jvm/internal/l;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getEXTENSION_PROPERTY_DELEGATE$cp()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public B()Z
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->l:Ljava/lang/Object;

    sget-object v1, Lkotlin/jvm/internal/l;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final C()Ljava/lang/reflect/Field;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/l0;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->H()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final D()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCallerKt;->coerceToExpectedReceiverType(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final E(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    sget-object v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->e:Ljava/lang/Object;

    if-ne p2, v0, :cond_30

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->K()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_30

    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not an extension property and thus getExtensionDelegate() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is not going to work, use getDelegate() instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    :goto_30
    if-eqz p1, :cond_37

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_36} :catch_39

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    return-object p1

    :catch_39
    move-exception p1

    new-instance p2, Lkotlin/reflect/full/b;

    invoke-direct {p2, p1}, Lkotlin/reflect/full/b;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p2
.end method

.method public F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->h:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$a;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_descriptor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object v0
.end method

.method public abstract G()Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$c<",
            "TR;>;"
        }
    .end annotation
.end method

.method public final H()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/UtilKt;->asKPropertyImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->k:Ljava/lang/String;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/KPropertyImpl;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->l:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/KPropertyImpl;->l:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 v0, 0x1

    :cond_38
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isConst()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k0;->isConst()Z

    move-result v0

    return v0
.end method

.method public isLateinit()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k0;->s0()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/q;->b:Lkotlin/reflect/jvm/internal/q;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/q;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->G()Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->w()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

.method public x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->i:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    return-object v0
.end method

.method public y()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->G()Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->y()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic z()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.a (kotlin.reflect.jvm.internal.KPropertyImpl$a)
.class public abstract Lkotlin/reflect/jvm/internal/KPropertyImpl$a;
.super Lkotlin/reflect/jvm/internal/KCallableImpl;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/reflect/KFunction;
.implements Lkotlin/reflect/KProperty$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyType:",
        "Ljava/lang/Object;",
        "ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KCallableImpl<",
        "TReturnType;>;",
        "Lkotlin/reflect/KFunction<",
        "TReturnType;>;",
        "Lkotlin/reflect/KProperty$a<",
        "TPropertyType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->B()Z

    move-result v0

    return v0
.end method

.method public abstract C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;
.end method

.method public abstract D()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl<",
            "TPropertyType;>;"
        }
    .end annotation
.end method

.method public isExternal()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isInfix()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->isInfix()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->isInline()Z

    move-result v0

    return v0
.end method

.method public isOperator()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->isOperator()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    return-object v0
.end method

.method public y()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.b (kotlin.reflect.jvm.internal.KPropertyImpl$b)
.class public final Lkotlin/reflect/jvm/internal/KPropertyImpl$b;
.super Ljava/lang/Object;
.source "KPropertyImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->access$getEXTENSION_PROPERTY_DELEGATE$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.c (kotlin.reflect.jvm.internal.KPropertyImpl$c)
.class public abstract Lkotlin/reflect/jvm/internal/KPropertyImpl$c;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$a;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/reflect/KProperty$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
        "TR;TR;>;",
        "Lkotlin/reflect/KProperty$b<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final synthetic e:[Lkotlin/reflect/KProperty;


# instance fields
.field private final f:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

.field private final g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/e0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/e0;-><init>(Lkotlin/reflect/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/e0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "caller"

    const-string v4, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/e0;-><init>(Lkotlin/reflect/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->e:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;-><init>()V

    new-instance v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$c;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->f:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$a;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$c;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->E()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    return-object v0
.end method

.method public E()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->f:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/ReflectProperties$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<get-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/ReflectProperties$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/calls/Caller;

    return-object v0
.end method

.method public bridge synthetic z()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c;->E()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.c.a (kotlin.reflect.jvm.internal.KPropertyImpl$c$a)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$c$a;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/calls/Caller<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$c;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->access$computeCallerForAccessor(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$a;->c()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.c.b (kotlin.reflect.jvm.internal.KPropertyImpl$c$b)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$c;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_25

    :cond_11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createDefaultGetter(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    move-result-object v0

    :goto_25
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$c$b;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.d (kotlin.reflect.jvm.internal.KPropertyImpl$d)
.class public abstract Lkotlin/reflect/jvm/internal/KPropertyImpl$d;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$a;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
        "TR;",
        "Lkotlin/v;",
        ">;",
        "Lkotlin/reflect/KMutableProperty$a<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final synthetic e:[Lkotlin/reflect/KProperty;


# instance fields
.field private final f:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

.field private final g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/e0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/e0;-><init>(Lkotlin/reflect/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/e0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "caller"

    const-string v4, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/e0;-><init>(Lkotlin/reflect/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->e:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;-><init>()V

    new-instance v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$d;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->f:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$d;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->E()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v0

    return-object v0
.end method

.method public E()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->f:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/ReflectProperties$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<set-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->g:Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/ReflectProperties$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/calls/Caller;

    return-object v0
.end method

.method public bridge synthetic z()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d;->E()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.d.a (kotlin.reflect.jvm.internal.KPropertyImpl$d$a)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl$d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/calls/Caller<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$d;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->access$computeCallerForAccessor(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;->c()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.d.b (kotlin.reflect.jvm.internal.KPropertyImpl$d$b)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl$d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$d;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_29

    :cond_11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createDefaultSetter(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    move-result-object v0

    :goto_29
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$b;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.e (kotlin.reflect.jvm.internal.KPropertyImpl$e)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$e;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->y(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$e;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImpl.f (kotlin.reflect.jvm.internal.KPropertyImpl$f)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$f;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/Object;)V
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Field;
    .registers 11

    sget-object v0, Lkotlin/reflect/jvm/internal/r;->b:Lkotlin/reflect/jvm/internal/r;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/r;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/c;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/c$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    check-cast v0, Lkotlin/reflect/jvm/internal/c$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->b:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->e()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v4

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->d()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/b;

    move-result-object v5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->g()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/e;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmFieldSignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/b;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/e;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/c$a;

    move-result-object v3

    if-eqz v3, :cond_87

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->isPropertyWithBackingFieldInOuterClass(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->e()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_5a

    :cond_40
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_4f

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_68

    :cond_4f
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/internal/m;->a()Ljava/lang/Class;

    move-result-object v0

    goto :goto_68

    :cond_5a
    :goto_5a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/internal/m;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_68
    if-eqz v0, :cond_87

    :try_start_6a
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/c$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_72
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6a .. :try_end_72} :catch_87

    goto :goto_87

    :cond_73
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/c$a;

    if-eqz v1, :cond_7e

    check-cast v0, Lkotlin/reflect/jvm/internal/c$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$a;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_87

    :cond_7e
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/c$b;

    if-eqz v1, :cond_83

    goto :goto_87

    :cond_83
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/c$d;

    if-eqz v0, :cond_88

    :catch_87
    :cond_87
    :goto_87
    return-object v2

    :cond_88
    new-instance v0, Lkotlin/k;

    invoke-direct {v0}, Lkotlin/k;-><init>()V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$f;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
