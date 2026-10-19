###### Class kotlin.reflect.jvm.internal.impl.types.LazyWrappedType (kotlin.reflect.jvm.internal.impl.types.LazyWrappedType)
.class public final Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;
.super Lkotlin/reflect/jvm/internal/impl/types/n0;
.source "SpecialTypes.kt"


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/storage/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/e<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/reflect/jvm/internal/impl/storage/h;

.field private final d:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/jvm/b/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/storage/h;",
            "Lkotlin/jvm/b/a<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->c:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->d:Lkotlin/jvm/b/a;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/h;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/e;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->b:Lkotlin/reflect/jvm/internal/impl/storage/e;

    return-void
.end method

.method public static final synthetic access$getComputation$p(Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;)Lkotlin/jvm/b/a;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->d:Lkotlin/jvm/b/a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic J0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->N0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    move-result-object p1

    return-object p1
.end method

.method protected L0()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->b:Lkotlin/reflect/jvm/internal/impl/storage/e;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/u;

    return-object v0
.end method

.method public M0()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->b:Lkotlin/reflect/jvm/internal/impl/storage/e;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/storage/e;->j()Z

    move-result v0

    return v0
.end method

.method public N0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;
    .registers 5

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->c:Lkotlin/reflect/jvm/internal/impl/storage/h;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;

    invoke-direct {v2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;Lkotlin/reflect/jvm/internal/impl/types/checker/d;)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/jvm/b/a;)V

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.LazyWrappedType.a (kotlin.reflect.jvm.internal.impl.types.LazyWrappedType$a)
.class final Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;
.super Lkotlin/jvm/internal/t;
.source "SpecialTypes.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->N0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/types/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/types/checker/d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;Lkotlin/reflect/jvm/internal/impl/types/checker/d;)V
    .registers 3

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->a:Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->a:Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->access$getComputation$p(Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;)Lkotlin/jvm/b/a;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/d;->g(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->c()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    return-object v0
.end method
