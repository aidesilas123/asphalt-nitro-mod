###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.h (kotlin.reflect.jvm.internal.impl.resolve.constants.h)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;
.super Ljava/lang/Object;
.source "ConstantValueFactory.kt"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h$b;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h$b;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)V

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;-><init>(Ljava/util/List;Lkotlin/jvm/b/l;)V

    return-object p2
.end method


# virtual methods
.method public final b(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h$a;

    invoke-direct {v1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;)V

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;-><init>(Ljava/util/List;Lkotlin/jvm/b/l;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_11

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;-><init>(B)V

    goto/16 :goto_128

    :cond_11
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_22

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/t;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/t;-><init>(S)V

    goto/16 :goto_128

    :cond_22
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_33

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;-><init>(I)V

    goto/16 :goto_128

    :cond_33
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_44

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;-><init>(J)V

    goto/16 :goto_128

    :cond_44
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_55

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;-><init>(C)V

    goto/16 :goto_128

    :cond_55
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_66

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/l;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/l;-><init>(F)V

    goto/16 :goto_128

    :cond_66
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_77

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;-><init>(D)V

    goto/16 :goto_128

    :cond_77
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_88

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/c;-><init>(Z)V

    goto/16 :goto_128

    :cond_88
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_95

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;-><init>(Ljava/lang/String;)V

    goto/16 :goto_128

    :cond_95
    instance-of v0, p1, [B

    if-eqz v0, :cond_a7

    check-cast p1, [B

    invoke-static {p1}, Lkotlin/collections/k;->toList([B)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->c:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto/16 :goto_128

    :cond_a7
    instance-of v0, p1, [S

    if-eqz v0, :cond_b9

    check-cast p1, [S

    invoke-static {p1}, Lkotlin/collections/k;->toList([S)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->d:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto/16 :goto_128

    :cond_b9
    instance-of v0, p1, [I

    if-eqz v0, :cond_ca

    check-cast p1, [I

    invoke-static {p1}, Lkotlin/collections/k;->toList([I)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->e:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto :goto_128

    :cond_ca
    instance-of v0, p1, [J

    if-eqz v0, :cond_db

    check-cast p1, [J

    invoke-static {p1}, Lkotlin/collections/k;->toList([J)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->g:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto :goto_128

    :cond_db
    instance-of v0, p1, [C

    if-eqz v0, :cond_ec

    check-cast p1, [C

    invoke-static {p1}, Lkotlin/collections/k;->toList([C)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->b:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto :goto_128

    :cond_ec
    instance-of v0, p1, [F

    if-eqz v0, :cond_fd

    check-cast p1, [F

    invoke-static {p1}, Lkotlin/collections/k;->toList([F)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->f:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto :goto_128

    :cond_fd
    instance-of v0, p1, [D

    if-eqz v0, :cond_10e

    check-cast p1, [D

    invoke-static {p1}, Lkotlin/collections/k;->toList([D)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->h:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto :goto_128

    :cond_10e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_11f

    check-cast p1, [Z

    invoke-static {p1}, Lkotlin/collections/k;->toList([Z)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->a:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    goto :goto_128

    :cond_11f
    if-nez p1, :cond_127

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;-><init>()V

    goto :goto_128

    :cond_127
    const/4 v0, 0x0

    :goto_128
    return-object v0
.end method
