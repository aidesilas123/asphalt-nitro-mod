###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e.b (kotlin.reflect.jvm.internal.impl.descriptors.impl.e$b)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;
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
        "Lkotlin/reflect/jvm/internal/impl/types/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/storage/h;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->b:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 7

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;)V

    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/storage/h;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/e;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/f0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    return-object v0
.end method
