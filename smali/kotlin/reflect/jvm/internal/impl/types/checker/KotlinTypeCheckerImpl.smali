###### Class kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeCheckerImpl (kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeCheckerImpl)
.class public Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;
.super Ljava/lang/Object;
.source "KotlinTypeCheckerImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/c;


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;


# direct methods
.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->e(I)V

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;

    return-void
.end method

.method private static synthetic e(I)V
    .registers 9

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq p0, v4, :cond_2b

    if-eq p0, v6, :cond_26

    if-eq p0, v0, :cond_21

    if-eq p0, v3, :cond_1c

    if-eq p0, v2, :cond_17

    const-string v7, "equalityAxioms"

    aput-object v7, v1, v5

    goto :goto_2f

    :cond_17
    const-string v7, "b"

    aput-object v7, v1, v5

    goto :goto_2f

    :cond_1c
    const-string v7, "a"

    aput-object v7, v1, v5

    goto :goto_2f

    :cond_21
    const-string v7, "supertype"

    aput-object v7, v1, v5

    goto :goto_2f

    :cond_26
    const-string v7, "subtype"

    aput-object v7, v1, v5

    goto :goto_2f

    :cond_2b
    const-string v7, "procedure"

    aput-object v7, v1, v5

    :goto_2f
    const-string v5, "kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl"

    aput-object v5, v1, v4

    if-eq p0, v4, :cond_4c

    if-eq p0, v6, :cond_47

    if-eq p0, v0, :cond_47

    if-eq p0, v3, :cond_42

    if-eq p0, v2, :cond_42

    const-string p0, "withAxioms"

    aput-object p0, v1, v6

    goto :goto_50

    :cond_42
    const-string p0, "equalTypes"

    aput-object p0, v1, v6

    goto :goto_50

    :cond_47
    const-string p0, "isSubtypeOf"

    aput-object p0, v1, v6

    goto :goto_50

    :cond_4c
    const-string p0, "<init>"

    aput-object p0, v1, v6

    :goto_50
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static withAxioms(Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;)Lkotlin/reflect/jvm/internal/impl/types/checker/c;
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->e(I)V

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;

    invoke-direct {v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;)V

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/n;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)V

    return-object v0
.end method


# virtual methods
.method public b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->e(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->e(I)V

    :cond_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->d(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->e(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->e(I)V

    :cond_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeCheckerImpl.a (kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeCheckerImpl$a)
.class final Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;
.super Lkotlin/reflect/jvm/internal/impl/types/checker/m;
.source "KotlinTypeCheckerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl;->withAxioms(Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;)Lkotlin/reflect/jvm/internal/impl/types/checker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/m;-><init>()V

    return-void
.end method

.method private static synthetic f(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "constructor1"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "constructor2"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$1"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "assertEqualTypeConstructors"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;->f(I)V

    :cond_6
    const/4 v1, 0x1

    if-nez p2, :cond_c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;->f(I)V

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeCheckerImpl$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;

    invoke-interface {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->a(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    return v0
.end method
