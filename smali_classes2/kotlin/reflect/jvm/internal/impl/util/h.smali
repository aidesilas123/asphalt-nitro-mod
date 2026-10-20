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
