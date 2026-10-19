###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e.a (kotlin.reflect.jvm.internal.impl.descriptors.impl.e$a)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/d0;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/types/f0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/storage/h;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->a()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    return-object v0
.end method
