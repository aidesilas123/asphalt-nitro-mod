###### Class kotlin.reflect.jvm.internal.impl.load.java.m (kotlin.reflect.jvm.internal.impl.load.java.m)
.class public Lkotlin/reflect/jvm/internal/impl/load/java/m;
.super Ljava/lang/Object;
.source "JavaVisibilities.java"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/m$a;

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/m$a;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/m$b;

    const-string v1, "protected_static"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/m$b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/m$c;

    const-string v1, "protected_and_package"

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/m$c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-void
.end method

.method private static synthetic a(I)V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_1b

    if-eq p0, v4, :cond_16

    if-eq p0, v0, :cond_11

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_11
    const-string v5, "second"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_16
    const-string v5, "first"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_1b
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_1f
    const-string v3, "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_2c

    if-eq p0, v0, :cond_2c

    const-string p0, "isVisibleForProtectedAndPackage"

    aput-object p0, v1, v4

    goto :goto_30

    :cond_2c
    const-string p0, "areInSamePackage"

    aput-object p0, v1, v4

    :goto_30
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    return p0
.end method

.method private static d(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 4

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-nez p0, :cond_8

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(I)V

    :cond_8
    if-nez p1, :cond_e

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(I)V

    :cond_e
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-eqz p1, :cond_2e

    if-eqz p0, :cond_2e

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->e()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->e()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method private static e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 5

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(I)V

    :cond_6
    const/4 v0, 0x1

    if-nez p2, :cond_c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(I)V

    :cond_c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->unwrapFakeOverrideToAnyDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/m;)Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    :cond_17
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;->d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.m.a (kotlin.reflect.jvm.internal.impl.load.java.m$a)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/m$a;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
.source "JavaVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic f(I)V
    .registers 11

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x2

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const/4 v4, 0x3

    goto :goto_13

    :cond_12
    const/4 v4, 0x2

    :goto_13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$1"

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p0, v7, :cond_36

    if-eq p0, v3, :cond_31

    if-eq p0, v1, :cond_2e

    if-eq p0, v6, :cond_29

    if-eq p0, v0, :cond_2e

    const-string v9, "what"

    aput-object v9, v4, v8

    goto :goto_3a

    :cond_29
    const-string v9, "classDescriptor"

    aput-object v9, v4, v8

    goto :goto_3a

    :cond_2e
    aput-object v5, v4, v8

    goto :goto_3a

    :cond_31
    const-string v9, "visibility"

    aput-object v9, v4, v8

    goto :goto_3a

    :cond_36
    const-string v9, "from"

    aput-object v9, v4, v8

    :goto_3a
    const-string v8, "effectiveVisibility"

    if-eq p0, v1, :cond_46

    if-eq p0, v0, :cond_43

    aput-object v5, v4, v7

    goto :goto_4a

    :cond_43
    aput-object v8, v4, v7

    goto :goto_4a

    :cond_46
    const-string v5, "normalize"

    aput-object v5, v4, v7

    :goto_4a
    if-eq p0, v3, :cond_5a

    if-eq p0, v1, :cond_5e

    if-eq p0, v6, :cond_57

    if-eq p0, v0, :cond_5e

    const-string v5, "isVisible"

    aput-object v5, v4, v3

    goto :goto_5e

    :cond_57
    aput-object v8, v4, v3

    goto :goto_5e

    :cond_5a
    const-string v5, "compareTo"

    aput-object v5, v4, v3

    :cond_5e
    :goto_5e
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6c

    if-eq p0, v0, :cond_6c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :cond_6c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_71
    throw p0
.end method


# virtual methods
.method protected a(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Ljava/lang/Integer;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m$a;->f(I)V

    :cond_6
    if-ne p0, p1, :cond_e

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1a
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "public/*package*/"

    return-object v0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 4

    if-nez p2, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/m$a;->f(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/m$a;->f(I)V

    :cond_c
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p1

    return p1
.end method

.method public e()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez v0, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m$a;->f(I)V

    :cond_8
    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.m.b (kotlin.reflect.jvm.internal.impl.load.java.m$b)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/m$b;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
.source "JavaVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic f(I)V
    .registers 8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    if-eq p0, v0, :cond_c

    const/4 v2, 0x3

    goto :goto_d

    :cond_c
    const/4 v2, 0x2

    :goto_d
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$2"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1f

    if-eq p0, v0, :cond_1c

    const-string v6, "what"

    aput-object v6, v2, v4

    goto :goto_23

    :cond_1c
    aput-object v3, v2, v4

    goto :goto_23

    :cond_1f
    const-string v6, "from"

    aput-object v6, v2, v4

    :goto_23
    if-eq p0, v0, :cond_28

    aput-object v3, v2, v5

    goto :goto_2c

    :cond_28
    const-string v3, "normalize"

    aput-object v3, v2, v5

    :goto_2c
    if-eq p0, v0, :cond_32

    const-string v3, "isVisible"

    aput-object v3, v2, v0

    :cond_32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_43
    throw p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "protected/*protected static*/"

    return-object v0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 5

    if-nez p2, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m$b;->f(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m$b;->f(I)V

    :cond_c
    invoke-static {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->c(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p1

    return p1
.end method

.method public e()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez v0, :cond_8

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m$b;->f(I)V

    :cond_8
    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.m.c (kotlin.reflect.jvm.internal.impl.load.java.m$c)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/m$c;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
.source "JavaVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic f(I)V
    .registers 9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    const/4 v3, 0x2

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/JavaVisibilities$3"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v5, :cond_27

    if-eq p0, v2, :cond_22

    if-eq p0, v0, :cond_1f

    const-string v7, "what"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_1f
    aput-object v4, v3, v6

    goto :goto_2b

    :cond_22
    const-string v7, "visibility"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_27
    const-string v7, "from"

    aput-object v7, v3, v6

    :goto_2b
    if-eq p0, v0, :cond_30

    aput-object v4, v3, v5

    goto :goto_34

    :cond_30
    const-string v4, "normalize"

    aput-object v4, v3, v5

    :goto_34
    if-eq p0, v2, :cond_3d

    if-eq p0, v0, :cond_41

    const-string v4, "isVisible"

    aput-object v4, v3, v2

    goto :goto_41

    :cond_3d
    const-string v4, "compareTo"

    aput-object v4, v3, v2

    :cond_41
    :goto_41
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4d

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_52
    throw p0
.end method


# virtual methods
.method protected a(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Ljava/lang/Integer;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m$c;->f(I)V

    :cond_6
    if-ne p0, p1, :cond_e

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    :cond_14
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "protected/*protected and package*/"

    return-object v0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 5

    if-nez p2, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m$c;->f(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m$c;->f(I)V

    :cond_c
    invoke-static {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->c(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p1

    return p1
.end method

.method public e()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez v0, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m$c;->f(I)V

    :cond_8
    return-object v0
.end method
