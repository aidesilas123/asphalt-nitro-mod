###### Class kotlin.reflect.jvm.internal.impl.util.i (kotlin.reflect.jvm.internal.impl.util.i)
.class public final Lkotlin/reflect/jvm/internal/impl/util/i;
.super Ljava/lang/Object;
.source "OperatorNameConventions.kt"


# static fields
.field public static final A:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final B:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final C:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final D:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final E:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final F:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final G:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final M:Lkotlin/reflect/jvm/internal/impl/util/i;

.field public static final a:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final k:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final l:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final m:Lkotlin/text/Regex;

.field public static final n:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final o:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final p:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final q:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final r:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final s:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final t:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final u:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final v:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final w:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final x:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final y:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final z:Lkotlin/reflect/jvm/internal/impl/name/Name;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/i;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/i;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->M:Lkotlin/reflect/jvm/internal/impl/util/i;

    const-string v0, "getValue"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const-string v1, "Name.identifier(\"getValue\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->a:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v1, "setValue"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    const-string v2, "Name.identifier(\"setValue\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/i;->b:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v2, "provideDelegate"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    const-string v3, "Name.identifier(\"provideDelegate\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/util/i;->c:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "equals"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"equals\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->d:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "compareTo"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"compareTo\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->e:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "contains"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"contains\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->f:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "invoke"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"invoke\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->g:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "iterator"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"iterator\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->h:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "get"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"get\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->i:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "set"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"set\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->j:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "next"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"next\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->k:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "hasNext"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"hasNext\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->l:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "component\\d+"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->m:Lkotlin/text/Regex;

    const-string v3, "and"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"and\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->n:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "or"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"or\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->o:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v3, "inc"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    const-string v4, "Name.identifier(\"inc\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/i;->p:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v4, "dec"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    const-string v5, "Name.identifier(\"dec\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/util/i;->q:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v5, "plus"

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    const-string v6, "Name.identifier(\"plus\")"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/util/i;->r:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v6, "minus"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    const-string v7, "Name.identifier(\"minus\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/i;->s:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v7, "not"

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v7

    const-string v8, "Name.identifier(\"not\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/util/i;->t:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v8, "unaryMinus"

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    const-string v9, "Name.identifier(\"unaryMinus\")"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/util/i;->u:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v9, "unaryPlus"

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v9

    const-string v10, "Name.identifier(\"unaryPlus\")"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/util/i;->v:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v10, "times"

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    const-string v11, "Name.identifier(\"times\")"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/util/i;->w:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v11, "div"

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v11

    const-string v12, "Name.identifier(\"div\")"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/util/i;->x:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v12, "mod"

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v12

    const-string v13, "Name.identifier(\"mod\")"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/util/i;->y:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v13, "rem"

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v13

    const-string v14, "Name.identifier(\"rem\")"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/util/i;->z:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v14, "rangeTo"

    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v14

    const-string v15, "Name.identifier(\"rangeTo\")"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/util/i;->A:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v15, "timesAssign"

    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v15

    move-object/from16 v16, v2

    const-string v2, "Name.identifier(\"timesAssign\")"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v15, Lkotlin/reflect/jvm/internal/impl/util/i;->B:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v2, "divAssign"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    move-object/from16 v17, v1

    const-string v1, "Name.identifier(\"divAssign\")"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/util/i;->C:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v1, "modAssign"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    move-object/from16 v18, v0

    const-string v0, "Name.identifier(\"modAssign\")"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/i;->D:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "remAssign"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    move-object/from16 v19, v1

    const-string v1, "Name.identifier(\"remAssign\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->E:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v1, "plusAssign"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    move-object/from16 v20, v0

    const-string v0, "Name.identifier(\"plusAssign\")"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/i;->F:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "minusAssign"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    move-object/from16 v21, v1

    const-string v1, "Name.identifier(\"minusAssign\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->G:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/4 v1, 0x5

    move-object/from16 v22, v0

    new-array v0, v1, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/16 v23, 0x0

    aput-object v3, v0, v23

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v4, 0x2

    aput-object v9, v0, v4

    const/4 v1, 0x3

    aput-object v8, v0, v1

    const/16 v24, 0x4

    aput-object v7, v0, v24

    invoke-static {v0}, Lkotlin/collections/h0;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->H:Ljava/util/Set;

    new-array v0, v1, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v9, v0, v23

    aput-object v8, v0, v3

    aput-object v7, v0, v4

    invoke-static {v0}, Lkotlin/collections/h0;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->I:Ljava/util/Set;

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v10, v0, v23

    aput-object v5, v0, v3

    aput-object v6, v0, v4

    aput-object v11, v0, v1

    aput-object v12, v0, v24

    const/4 v5, 0x5

    aput-object v13, v0, v5

    const/4 v6, 0x6

    aput-object v14, v0, v6

    invoke-static {v0}, Lkotlin/collections/h0;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->J:Ljava/util/Set;

    new-array v0, v6, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v15, v0, v23

    aput-object v2, v0, v3

    aput-object v19, v0, v4

    aput-object v20, v0, v1

    aput-object v21, v0, v24

    aput-object v22, v0, v5

    invoke-static {v0}, Lkotlin/collections/h0;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->K:Ljava/util/Set;

    new-array v0, v1, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    aput-object v18, v0, v23

    aput-object v17, v0, v3

    aput-object v16, v0, v4

    invoke-static {v0}, Lkotlin/collections/h0;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i;->L:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
