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
