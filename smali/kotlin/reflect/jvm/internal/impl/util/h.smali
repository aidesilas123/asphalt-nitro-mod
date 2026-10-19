###### Class kotlin.reflect.jvm.internal.impl.util.h (kotlin.reflect.jvm.internal.impl.util.h)
.class public final Lkotlin/reflect/jvm/internal/impl/util/h;
.super Lkotlin/reflect/jvm/internal/impl/util/a;
.source "modifierChecks.kt"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/util/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/h;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/h;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/h;->b:Lkotlin/reflect/jvm/internal/impl/util/h;

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/util/c;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/i;->i:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/4 v8, 0x2

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/e$b;->b:Lkotlin/reflect/jvm/internal/impl/util/e$b;

    const/4 v10, 0x0

    aput-object v9, v3, v10

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/k$a;

    const/4 v11, 0x1

    invoke-direct {v1, v11}, Lkotlin/reflect/jvm/internal/impl/util/k$a;-><init>(I)V

    aput-object v1, v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    aput-object v7, v0, v10

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/i;->j:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v3, v10

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/k$a;

    invoke-direct {v4, v8}, Lkotlin/reflect/jvm/internal/impl/util/k$a;-><init>(I)V

    aput-object v4, v3, v11

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/h$a;->a:Lkotlin/reflect/jvm/internal/impl/util/h$a;

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;)V

    aput-object v1, v0, v11

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->a:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/4 v2, 0x4

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/util/g;->b:Lkotlin/reflect/jvm/internal/impl/util/g;

    aput-object v3, v14, v11

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/k$a;

    invoke-direct {v4, v8}, Lkotlin/reflect/jvm/internal/impl/util/k$a;-><init>(I)V

    aput-object v4, v14, v8

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/d;->b:Lkotlin/reflect/jvm/internal/impl/util/d;

    const/4 v5, 0x3

    aput-object v4, v14, v5

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    aput-object v1, v0, v8

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/util/i;->b:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v6, v2, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v6, v10

    aput-object v3, v6, v11

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/k$a;

    invoke-direct {v7, v5}, Lkotlin/reflect/jvm/internal/impl/util/k$a;-><init>(I)V

    aput-object v7, v6, v8

    aput-object v4, v6, v5

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v23}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->c:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    aput-object v3, v14, v11

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/util/k$b;

    invoke-direct {v6, v8}, Lkotlin/reflect/jvm/internal/impl/util/k$b;-><init>(I)V

    aput-object v6, v14, v8

    aput-object v4, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/util/i;->g:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v4, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v4, v10

    move-object/from16 v18, v1

    move-object/from16 v20, v4

    invoke-direct/range {v18 .. v23}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->f:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/k$d;->b:Lkotlin/reflect/jvm/internal/impl/util/k$d;

    aput-object v4, v14, v11

    aput-object v3, v14, v8

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/j$a;->d:Lkotlin/reflect/jvm/internal/impl/util/j$a;

    aput-object v6, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->h:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v14, v8, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/util/k$c;->b:Lkotlin/reflect/jvm/internal/impl/util/k$c;

    aput-object v7, v14, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/4 v12, 0x7

    aput-object v1, v0, v12

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/i;->k:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v15, v8, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v15, v10

    aput-object v7, v15, v11

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v12, 0x8

    aput-object v1, v0, v12

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/i;->l:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v15, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v15, v10

    aput-object v7, v15, v11

    aput-object v6, v15, v8

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v6, 0x9

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->A:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v14, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    aput-object v4, v14, v11

    aput-object v3, v14, v8

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v6, 0xa

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/i;->d:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v12, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/e$a;->b:Lkotlin/reflect/jvm/internal/impl/util/e$a;

    aput-object v13, v12, v10

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h$b;->a:Lkotlin/reflect/jvm/internal/impl/util/h$b;

    invoke-direct {v1, v6, v12, v13}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;)V

    const/16 v6, 0xb

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->e:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/j$b;->d:Lkotlin/reflect/jvm/internal/impl/util/j$b;

    aput-object v6, v14, v11

    aput-object v4, v14, v8

    aput-object v3, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v6, 0xc

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->J:Ljava/util/Set;

    new-array v14, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    aput-object v4, v14, v11

    aput-object v3, v14, v8

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v6, 0xd

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->I:Ljava/util/Set;

    new-array v14, v8, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    aput-object v7, v14, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v6, 0xe

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    new-array v6, v8, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/i;->p:Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v12, v6, v10

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/i;->q:Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v12, v6, v11

    invoke-static {v6}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v12, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v12, v10

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h$c;->a:Lkotlin/reflect/jvm/internal/impl/util/h$c;

    invoke-direct {v1, v6, v12, v13}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;)V

    const/16 v6, 0xf

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->K:Ljava/util/Set;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/j$c;->d:Lkotlin/reflect/jvm/internal/impl/util/j$c;

    aput-object v2, v14, v11

    aput-object v4, v14, v8

    aput-object v3, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->m:Lkotlin/text/Regex;

    new-array v14, v8, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v9, v14, v10

    aput-object v7, v14, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Lkotlin/text/Regex;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/n;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/h;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/util/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/h;->a:Ljava/util/List;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.h.a (kotlin.reflect.jvm.internal.impl.util.h$a)
.class final Lkotlin/reflect/jvm/internal/impl/util/h$a;
.super Lkotlin/jvm/internal/t;
.source "modifierChecks.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/h$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/h$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/h$a;->a:Lkotlin/reflect/jvm/internal/impl/util/h$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;
    .registers 5

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "valueParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/p;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2a

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->declaresOrInheritsDefaultValue(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;->q0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    if-ne p1, v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/util/h;->b:Lkotlin/reflect/jvm/internal/impl/util/h;

    if-nez v0, :cond_31

    const-string p1, "last parameter should not have a default value or be a vararg"

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/h$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.h.b (kotlin.reflect.jvm.internal.impl.util.h$b)
.class final Lkotlin/reflect/jvm/internal/impl/util/h$b;
.super Lkotlin/jvm/internal/t;
.source "modifierChecks.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/h$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/h$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/h$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/h$b;->a:Lkotlin/reflect/jvm/internal/impl/util/h$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;
    .registers 7

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;->a:Lkotlin/reflect/jvm/internal/impl/util/h$b$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/h;->b:Lkotlin/reflect/jvm/internal/impl/util/h;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5a

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->d()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    const/4 p1, 0x0

    goto :goto_56

    :cond_2f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;->a:Lkotlin/reflect/jvm/internal/impl/util/h$b$a;

    const-string v4, "it"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    const-string v4, "it.containingDeclaration"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p1, 0x1

    :goto_56
    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :cond_5a
    :goto_5a
    if-nez v1, :cond_5f

    const-string p1, "must override \'\'equals()\'\' in Any"

    goto :goto_60

    :cond_5f
    const/4 p1, 0x0

    :goto_60
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/h$b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.h.b.a (kotlin.reflect.jvm.internal.impl.util.h$b$a)
.class final Lkotlin/reflect/jvm/internal/impl/util/h$b$a;
.super Lkotlin/jvm/internal/t;
.source "modifierChecks.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/util/h$b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/h$b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;->a:Lkotlin/reflect/jvm/internal/impl/util/h$b$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    const-string v0, "$this$isAny"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_13

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isAny(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/h$b$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.h.c (kotlin.reflect.jvm.internal.impl.util.h$c)
.class final Lkotlin/reflect/jvm/internal/impl/util/h$c;
.super Lkotlin/jvm/internal/t;
.source "modifierChecks.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/h$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/h$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/h$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/h$c;->a:Lkotlin/reflect/jvm/internal/impl/util/h$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;
    .registers 5

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->K()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v0

    :goto_10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/h;->b:Lkotlin/reflect/jvm/internal/impl/util/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    const-string v2, "receiver.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eqz p1, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    if-nez v1, :cond_32

    const-string p1, "receiver must be a supertype of the return type"

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/h$c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
