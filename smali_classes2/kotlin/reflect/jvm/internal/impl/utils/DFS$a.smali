###### Class kotlin.reflect.jvm.internal.impl.utils.DFS.a (kotlin.reflect.jvm.internal.impl.utils.DFS$a)
.class final Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;
.super Lkotlin/reflect/jvm/internal/impl/utils/DFS$b;
.source "DFS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/utils/DFS;->ifAny(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/jvm/b/l;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/DFS$b<",
        "TN;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/b/l;

.field final synthetic b:[Z


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;[Z)V
    .registers 3

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->a:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->b:[Z

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->a:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->b:[Z

    aput-boolean v0, p1, v1

    :cond_14
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->b:[Z

    aget-boolean p1, p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method public d()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
