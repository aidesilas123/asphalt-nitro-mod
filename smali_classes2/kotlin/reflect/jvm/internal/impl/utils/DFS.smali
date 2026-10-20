###### Class kotlin.reflect.jvm.internal.impl.utils.DFS (kotlin.reflect.jvm.internal.impl.utils.DFS)
.class public Lkotlin/reflect/jvm/internal/impl/utils/DFS;
.super Ljava/lang/Object;
.source "DFS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$f;,
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$c;,
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$h;,
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$b;,
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;,
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;,
        Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;
    }
.end annotation


# direct methods
.method private static synthetic a(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_56

    :pswitch_7
    const-string v2, "nodes"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_c
    const-string v2, "current"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_11
    const-string v2, "node"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_16
    const-string v2, "predicate"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_1b
    const-string v2, "handler"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_20
    const-string v2, "visited"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_25
    const-string v2, "neighbors"

    aput-object v2, v0, v1

    :goto_29
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/utils/DFS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_8c

    const-string p0, "dfs"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_37
    const-string p0, "doDfs"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_3c
    const-string p0, "topologicalOrder"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_41
    const-string p0, "dfsFromNode"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_46
    const-string p0, "ifAny"

    aput-object p0, v0, v1

    :goto_4a
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_7
        :pswitch_25
        :pswitch_1b
        :pswitch_7
        :pswitch_25
        :pswitch_16
        :pswitch_11
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_11
        :pswitch_25
        :pswitch_20
        :pswitch_7
        :pswitch_25
        :pswitch_20
        :pswitch_7
        :pswitch_25
        :pswitch_c
        :pswitch_25
        :pswitch_20
        :pswitch_1b
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x7
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public static dfs(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$d<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$e<",
            "TN;TR;>;)TR;"
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_c
    if-nez p2, :cond_12

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_12
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$h;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->dfs(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static dfs(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$d<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$g<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$e<",
            "TN;TR;>;)TR;"
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_c
    if-nez p2, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_12
    if-nez p3, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)V

    goto :goto_1c

    :cond_2a
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$d<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$g<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$e<",
            "TN;*>;)V"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_e
    if-nez p2, :cond_15

    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_15
    if-nez p3, :cond_1c

    const/16 v0, 0x19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_1c
    invoke-interface {p2, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$g;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)V

    goto :goto_32

    :cond_40
    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static ifAny(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/jvm/b/l;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Lkotlin/reflect/jvm/internal/impl/utils/DFS$d<",
            "TN;>;",
            "Lkotlin/jvm/b/l<",
            "TN;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_6
    if-nez p1, :cond_d

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_d
    if-nez p2, :cond_14

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->a(I)V

    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Z

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;

    invoke-direct {v1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$a;-><init>(Lkotlin/jvm/b/l;[Z)V

    invoke-static {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->dfs(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$d;Lkotlin/reflect/jvm/internal/impl/utils/DFS$e;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
