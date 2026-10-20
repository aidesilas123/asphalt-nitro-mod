###### Class kotlin.reflect.jvm.internal.KTypeImpl.a.b (kotlin.reflect.jvm.internal.KTypeImpl$a$b)
.class final Lkotlin/reflect/jvm/internal/KTypeImpl$a$b;
.super Lkotlin/jvm/internal/t;
.source "KTypeImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KTypeImpl$a;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/reflect/Type;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KTypeImpl$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KTypeImpl$a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$a$b;->a:Lkotlin/reflect/jvm/internal/KTypeImpl$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$a$b;->a:Lkotlin/reflect/jvm/internal/KTypeImpl$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$a;->a:Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->g()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getParameterizedTypeArguments(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$a$b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
