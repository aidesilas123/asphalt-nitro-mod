###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.super Ljava/lang/Object;
.source "Visibilities.java"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field public static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field private static final m:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

.field public static final n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

.field public static final o:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final p:Lkotlin/reflect/jvm/internal/impl/util/f;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-class v0, Lkotlin/reflect/jvm/internal/impl/util/f;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$d;

    const-string v2, "private"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$d;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$e;

    const-string v5, "private_to_this"

    invoke-direct {v2, v5, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$e;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;

    const-string v6, "protected"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;-><init>(Ljava/lang/String;Z)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$g;

    const-string v9, "internal"

    invoke-direct {v6, v9, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$g;-><init>(Ljava/lang/String;Z)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$h;

    const-string v10, "public"

    invoke-direct {v9, v10, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$h;-><init>(Ljava/lang/String;Z)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$i;

    const-string v11, "local"

    invoke-direct {v10, v11, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$i;-><init>(Ljava/lang/String;Z)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$j;

    const-string v12, "inherited"

    invoke-direct {v11, v12, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$j;-><init>(Ljava/lang/String;Z)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$k;

    const-string v12, "invisible_fake"

    invoke-direct {v11, v12, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$k;-><init>(Ljava/lang/String;Z)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$l;

    const-string v12, "unknown"

    invoke-direct {v11, v12, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$l;-><init>(Ljava/lang/String;Z)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    const/4 v11, 0x4

    new-array v12, v11, [Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    aput-object v1, v12, v3

    aput-object v2, v12, v7

    const/4 v3, 0x2

    aput-object v6, v12, v3

    const/4 v7, 0x3

    aput-object v10, v12, v7

    invoke-static {v12}, Lkotlin/collections/h0;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->j:Ljava/util/Set;

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v7

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->k:Ljava/util/Map;

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$a;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$a;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->m:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$b;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$b;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$c;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$c;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->o:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/util/f;

    goto :goto_c3

    :cond_c1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/f$a;->a:Lkotlin/reflect/jvm/internal/impl/util/f$a;

    :goto_c3
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->p:Lkotlin/reflect/jvm/internal/impl/util/f;

    return-void
.end method

.method private static synthetic a(I)V
    .registers 5

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_26

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_26

    const/4 v0, 0x7

    if-eq p0, v0, :cond_26

    packed-switch p0, :pswitch_data_66

    const-string v0, "what"

    aput-object v0, v1, v3

    goto :goto_2a

    :pswitch_17
    const-string v0, "visibility"

    aput-object v0, v1, v3

    goto :goto_2a

    :pswitch_1c
    const-string v0, "second"

    aput-object v0, v1, v3

    goto :goto_2a

    :pswitch_21
    const-string v0, "first"

    aput-object v0, v1, v3

    goto :goto_2a

    :cond_26
    :pswitch_26
    const-string v0, "from"

    aput-object v0, v1, v3

    :goto_2a
    const-string v0, "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities"

    aput-object v0, v1, v2

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_76

    const-string p0, "isVisible"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_37
    const-string p0, "isPrivate"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_3c
    const-string p0, "compare"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_41
    const-string p0, "compareLocal"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_46
    const-string p0, "findInvisibleMember"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_4b
    const-string p0, "inSameFile"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_50
    const-string p0, "isVisibleWithAnyReceiver"

    aput-object p0, v1, v0

    goto :goto_59

    :pswitch_55
    const-string p0, "isVisibleIgnoringReceiver"

    aput-object p0, v1, v0

    :goto_59
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_66
    .packed-switch 0x9
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_21
        :pswitch_1c
        :pswitch_17
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_55
        :pswitch_55
        :pswitch_50
        :pswitch_50
        :pswitch_4b
        :pswitch_4b
        :pswitch_46
        :pswitch_46
        :pswitch_41
        :pswitch_41
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic b()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->m:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    return-object v0
.end method

.method static synthetic c()Lkotlin/reflect/jvm/internal/impl/util/f;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->p:Lkotlin/reflect/jvm/internal/impl/util/f;

    return-object v0
.end method

.method public static compare(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Ljava/lang/Integer;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_e
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Ljava/lang/Integer;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_e
    if-ne p0, p1, :cond_16

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_16
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_3d

    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findInvisibleMember(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/m;
    .registers 6

    if-nez p1, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    :goto_14
    if-eqz v0, :cond_32

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-eq v1, v2, :cond_32

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;->d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-nez v1, :cond_29

    return-object v0

    :cond_29
    const-class v1, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    goto :goto_14

    :cond_32
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;

    if-eqz v0, :cond_43

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->findInvisibleMember(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    move-result-object p0

    if-eqz p0, :cond_43

    return-object p0

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method public static inSameFile(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    if-eq p1, v0, :cond_1d

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Z
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-eq p0, v0, :cond_12

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public static isVisibleIgnoringReceiver(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a(I)V

    :cond_c
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    invoke-static {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->findInvisibleMember(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method
