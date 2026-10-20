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
