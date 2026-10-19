###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils (kotlin.reflect.jvm.internal.impl.types.ErrorUtils)
.class public Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;,
        Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;,
        Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;,
        Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/types/y;

.field private static final d:Lkotlin/reflect/jvm/internal/impl/types/u;

.field private static final e:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    const-string v1, "<ERROR CLASS>"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->b:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    const-string v0, "<LOOP IN SUPERTYPES>"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->c:Lkotlin/reflect/jvm/internal/impl/types/y;

    const-string v0, "<ERROR PROPERTY TYPE>"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->d:Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->f()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->f:Ljava/util/Set;

    return-void
.end method

.method private static synthetic a(I)V
    .registers 10

    const/16 v0, 0x13

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_d

    if-eq p0, v0, :cond_d

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_f

    :cond_d
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_f
    const/4 v4, 0x2

    if-eq p0, v2, :cond_18

    if-eq p0, v1, :cond_18

    if-eq p0, v0, :cond_18

    const/4 v5, 0x3

    goto :goto_19

    :cond_18
    const/4 v5, 0x2

    :goto_19
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_ba

    const-string v8, "function"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_26
    const-string v8, "typeParameterDescriptor"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_2b
    const-string v8, "errorClass"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_30
    const-string v8, "presentableName"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_35
    const-string v8, "arguments"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_3a
    const-string v8, "typeConstructor"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_3f
    const-string v8, "debugName"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_44
    const-string v8, "ownerScope"

    aput-object v8, v5, v7

    goto :goto_50

    :pswitch_49
    aput-object v6, v5, v7

    goto :goto_50

    :pswitch_4c
    const-string v8, "debugMessage"

    aput-object v8, v5, v7

    :goto_50
    const-string v7, "createErrorFunction"

    const/4 v8, 0x1

    if-eq p0, v2, :cond_64

    if-eq p0, v1, :cond_61

    if-eq p0, v0, :cond_5c

    aput-object v6, v5, v8

    goto :goto_68

    :cond_5c
    const-string v6, "getErrorModule"

    aput-object v6, v5, v8

    goto :goto_68

    :cond_61
    aput-object v7, v5, v8

    goto :goto_68

    :cond_64
    const-string v6, "createErrorProperty"

    aput-object v6, v5, v8

    :goto_68
    packed-switch p0, :pswitch_data_e6

    const-string v6, "containsErrorTypeInParameters"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_70
    const-string v6, "createUninferredParameterType"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_75
    const-string v6, "createErrorTypeConstructorWithCustomDebugName"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_7a
    const-string v6, "createErrorTypeConstructor"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_7f
    const-string v6, "createUnresolvedType"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_84
    const-string v6, "createErrorTypeWithArguments"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_89
    const-string v6, "createErrorTypeWithCustomConstructor"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_8e
    const-string v6, "createErrorTypeWithCustomDebugName"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_93
    const-string v6, "createErrorType"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_98
    aput-object v7, v5, v4

    goto :goto_a4

    :pswitch_9b
    const-string v6, "createErrorScope"

    aput-object v6, v5, v4

    goto :goto_a4

    :pswitch_a0
    const-string v6, "createErrorClass"

    aput-object v6, v5, v4

    :goto_a4
    :pswitch_a4
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_b4

    if-eq p0, v1, :cond_b4

    if-eq p0, v0, :cond_b4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b9

    :cond_b4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_b9
    throw p0

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_49
        :pswitch_44
        :pswitch_49
        :pswitch_4c
        :pswitch_3f
        :pswitch_3f
        :pswitch_3a
        :pswitch_4c
        :pswitch_35
        :pswitch_30
        :pswitch_35
        :pswitch_4c
        :pswitch_3f
        :pswitch_3f
        :pswitch_2b
        :pswitch_49
        :pswitch_26
    .end packed-switch

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9b
        :pswitch_9b
        :pswitch_a4
        :pswitch_98
        :pswitch_a4
        :pswitch_93
        :pswitch_8e
        :pswitch_89
        :pswitch_89
        :pswitch_84
        :pswitch_84
        :pswitch_7f
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_a4
        :pswitch_70
    .end packed-switch
.end method

.method static synthetic b()Ljava/util/Set;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->e(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    move-result-object p0

    return-object p0
.end method

.method public static createErrorClass(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ERROR CLASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    return-object v0
.end method

.method public static createErrorScope(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorScope(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method

.method public static createErrorScope(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;)V

    return-object p1

    :cond_f
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;)V

    return-object p1
.end method

.method public static createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeWithArguments(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    return-object p0
.end method

.method public static createErrorTypeConstructor(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERROR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->b:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->g(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static createErrorTypeConstructorWithCustomDebugName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->b:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->g(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static createErrorTypeWithArguments(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/g0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/y;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/o;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructor(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorScope(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/o;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/List;Z)V

    return-object v0
.end method

.method public static createErrorTypeWithCustomConstructor(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/o;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorScope(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/o;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    return-object v0
.end method

.method public static createErrorTypeWithCustomDebugName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructorWithCustomDebugName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeWithCustomConstructor(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->g(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;
    .registers 10

    if-nez p0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/o0/a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->b:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string p0, "<ERROR FUNCTION RETURN TYPE>"

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;->a1(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    return-object v0
.end method

.method private static f()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .registers 14

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->b:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    const-string v4, "<ERROR PROPERTY>"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->create(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;ZZZZZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->d:Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->P0(Lkotlin/reflect/jvm/internal/impl/types/u;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)V

    return-object v0
.end method

.method private static g(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_e
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getErrorModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    if-nez v0, :cond_9

    const/16 v1, 0x13

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a(I)V

    :cond_9
    return-object v0
.end method

.method private static h(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 1

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    return p0
.end method

.method public static isError(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    if-ne p0, v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public static isUninferredParameter(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 1

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.a (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$a)
.class final Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic u(I)V
    .registers 15

    const/16 v0, 0xd

    const/16 v1, 0xc

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq p0, v7, :cond_1f

    if-eq p0, v6, :cond_1f

    if-eq p0, v5, :cond_1f

    if-eq p0, v4, :cond_1f

    if-eq p0, v3, :cond_1f

    if-eq p0, v2, :cond_1f

    if-eq p0, v1, :cond_1f

    if-eq p0, v0, :cond_1f

    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_21

    :cond_1f
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_21
    const/4 v9, 0x2

    if-eq p0, v7, :cond_34

    if-eq p0, v6, :cond_34

    if-eq p0, v5, :cond_34

    if-eq p0, v4, :cond_34

    if-eq p0, v3, :cond_34

    if-eq p0, v2, :cond_34

    if-eq p0, v1, :cond_34

    if-eq p0, v0, :cond_34

    const/4 v10, 0x3

    goto :goto_35

    :cond_34
    const/4 v10, 0x2

    :goto_35
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1"

    const/4 v12, 0x0

    packed-switch p0, :pswitch_data_cc

    const-string v13, "capability"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_42
    const-string v13, "targetModule"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_47
    const-string v13, "visitor"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_4c
    const-string v13, "nameFilter"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_51
    const-string v13, "fqName"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_56
    aput-object v11, v10, v12

    :goto_58
    const-string v12, "getSubPackagesOf"

    if-eq p0, v7, :cond_8e

    if-eq p0, v6, :cond_8b

    if-eq p0, v5, :cond_86

    if-eq p0, v4, :cond_81

    if-eq p0, v3, :cond_7c

    if-eq p0, v2, :cond_77

    if-eq p0, v1, :cond_72

    if-eq p0, v0, :cond_6d

    aput-object v11, v10, v7

    goto :goto_92

    :cond_6d
    const-string v11, "getBuiltIns"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_72
    const-string v11, "getOriginal"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_77
    const-string v11, "getExpectedByModules"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_7c
    const-string v11, "getAllDependencyModules"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_81
    const-string v11, "getStableName"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_86
    const-string v11, "getName"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_8b
    aput-object v12, v10, v7

    goto :goto_92

    :cond_8e
    const-string v11, "getAnnotations"

    aput-object v11, v10, v7

    :goto_92
    packed-switch p0, :pswitch_data_ea

    const-string v11, "getCapability"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_9a
    const-string v11, "shouldSeeInternalsOf"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_9f
    const-string v11, "accept"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_a4
    const-string v11, "getPackage"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_a9
    aput-object v12, v10, v9

    :goto_ab
    :pswitch_ab
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_c5

    if-eq p0, v6, :cond_c5

    if-eq p0, v5, :cond_c5

    if-eq p0, v4, :cond_c5

    if-eq p0, v3, :cond_c5

    if-eq p0, v2, :cond_c5

    if-eq p0, v1, :cond_c5

    if-eq p0, v0, :cond_c5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ca

    :cond_c5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_ca
    throw p0

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_51
        :pswitch_56
        :pswitch_56
        :pswitch_47
        :pswitch_42
        :pswitch_56
        :pswitch_56
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_a9
        :pswitch_a9
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_a4
        :pswitch_ab
        :pswitch_ab
        :pswitch_9f
        :pswitch_9a
        :pswitch_ab
        :pswitch_ab
    .end packed-switch
.end method


# virtual methods
.method public G(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Z
    .registers 2

    if-nez p1, :cond_7

    const/16 p1, 0xb

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 1

    return-object p0
.end method

.method public b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d0(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_c
    return-object v0
.end method

.method public getName()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .registers 3

    const-string v0, "<ERROR MODULE>"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_c
    return-object v0
.end method

.method public h0(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor$a<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->getInstance()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0xd

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_b
    return-object v0
.end method

.method public l(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/jvm/b/l;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_c
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p2, 0x4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_16
    return-object p1
.end method

.method public t0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_b
    return-object v0
.end method

.method public w(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0xa

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;->u(I)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.b (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$b)
.class final Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->g(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->a:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic e(I)V
    .registers 8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_8

    :cond_6
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x2

    goto :goto_e

    :cond_d
    const/4 v3, 0x3

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2"

    const/4 v5, 0x0

    if-eq p0, v0, :cond_18

    aput-object v4, v3, v5

    goto :goto_1c

    :cond_18
    const-string v6, "kotlinTypeRefiner"

    aput-object v6, v3, v5

    :goto_1c
    const-string v5, "refine"

    const/4 v6, 0x1

    if-eq p0, v6, :cond_38

    if-eq p0, v2, :cond_33

    if-eq p0, v0, :cond_30

    const/4 v4, 0x4

    if-eq p0, v4, :cond_2d

    const-string v4, "getParameters"

    aput-object v4, v3, v6

    goto :goto_3c

    :cond_2d
    aput-object v5, v3, v6

    goto :goto_3c

    :cond_30
    aput-object v4, v3, v6

    goto :goto_3c

    :cond_33
    const-string v4, "getBuiltIns"

    aput-object v4, v3, v6

    goto :goto_3c

    :cond_38
    const-string v4, "getSupertypes"

    aput-object v4, v3, v6

    :goto_3c
    if-eq p0, v0, :cond_3f

    goto :goto_41

    :cond_3f
    aput-object v5, v3, v2

    :goto_41
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4d

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_52
    throw p0
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_6
    return-object p0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->a:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    return-object v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_a
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_a
    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->getInstance()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.c (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$c)
.class Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;
.source "ErrorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .registers 12

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;->b0(I)V

    :cond_6
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->getErrorModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    const/4 v8, 0x0

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->b:Lkotlin/reflect/jvm/internal/impl/storage/h;

    move-object v1, p0

    move-object v3, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;ZLkotlin/reflect/jvm/internal/impl/storage/h;)V

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->create(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/d0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->c1(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorScope(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/o;

    const-string v2, "<ERROR>"

    invoke-static {v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->d(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/o;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->U0(Lkotlin/reflect/jvm/internal/impl/types/u;)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;->k0(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V

    return-void
.end method

.method private static synthetic b0(I)V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_d

    if-eq p0, v0, :cond_d

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_f

    :cond_d
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_f
    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_17

    if-eq p0, v0, :cond_17

    const/4 v4, 0x3

    goto :goto_18

    :cond_17
    const/4 v4, 0x2

    :goto_18
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_72

    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_3b

    :pswitch_25
    const-string v7, "typeSubstitution"

    aput-object v7, v4, v6

    goto :goto_3b

    :pswitch_2a
    const-string v7, "kotlinTypeRefiner"

    aput-object v7, v4, v6

    goto :goto_3b

    :pswitch_2f
    const-string v7, "typeArguments"

    aput-object v7, v4, v6

    goto :goto_3b

    :pswitch_34
    aput-object v5, v4, v6

    goto :goto_3b

    :pswitch_37
    const-string v7, "substitutor"

    aput-object v7, v4, v6

    :goto_3b
    const-string v6, "getMemberScope"

    const-string v7, "substitute"

    const/4 v8, 0x1

    if-eq p0, v2, :cond_4c

    if-eq p0, v1, :cond_49

    if-eq p0, v0, :cond_49

    aput-object v5, v4, v8

    goto :goto_4e

    :cond_49
    aput-object v6, v4, v8

    goto :goto_4e

    :cond_4c
    aput-object v7, v4, v8

    :goto_4e
    packed-switch p0, :pswitch_data_86

    const-string v5, "<init>"

    aput-object v5, v4, v2

    goto :goto_5b

    :pswitch_56
    aput-object v6, v4, v2

    goto :goto_5b

    :pswitch_59
    aput-object v7, v4, v2

    :goto_5b
    :pswitch_5b
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6b

    if-eq p0, v1, :cond_6b

    if-eq p0, v0, :cond_6b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_70

    :cond_6b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_70
    throw p0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_37
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_34
        :pswitch_25
        :pswitch_2a
        :pswitch_34
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_59
        :pswitch_5b
        :pswitch_56
        :pswitch_56
        :pswitch_5b
        :pswitch_56
        :pswitch_56
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/j;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;->e0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;->b0(I)V

    :cond_6
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lkotlin/reflect/jvm/internal/impl/types/j0;Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;->b0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p2, 0x7

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;->b0(I)V

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error scope for class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with arguments: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorScope(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    if-nez p1, :cond_34

    const/16 p2, 0x8

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;->b0(I)V

    :cond_34
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.d (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$d)
.class public Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic g(I)V
    .registers 11

    const/16 v0, 0x12

    const/4 v1, 0x7

    if-eq p0, v1, :cond_d

    if-eq p0, v0, :cond_d

    packed-switch p0, :pswitch_data_aa

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_f

    :cond_d
    :pswitch_d
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_f
    const/4 v3, 0x2

    if-eq p0, v1, :cond_19

    if-eq p0, v0, :cond_19

    packed-switch p0, :pswitch_data_b6

    const/4 v4, 0x3

    goto :goto_1a

    :cond_19
    :pswitch_19
    const/4 v4, 0x2

    :goto_1a
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorScope"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_c2

    const-string v7, "debugMessage"

    aput-object v7, v4, v6

    goto :goto_42

    :pswitch_27
    const-string v7, "p"

    aput-object v7, v4, v6

    goto :goto_42

    :pswitch_2c
    const-string v7, "nameFilter"

    aput-object v7, v4, v6

    goto :goto_42

    :pswitch_31
    const-string v7, "kindFilter"

    aput-object v7, v4, v6

    goto :goto_42

    :pswitch_36
    aput-object v5, v4, v6

    goto :goto_42

    :pswitch_39
    const-string v7, "location"

    aput-object v7, v4, v6

    goto :goto_42

    :pswitch_3e
    const-string v7, "name"

    aput-object v7, v4, v6

    :goto_42
    const-string v6, "getContributedDescriptors"

    const-string v7, "getContributedFunctions"

    const-string v8, "getContributedVariables"

    const/4 v9, 0x1

    if-eq p0, v1, :cond_68

    if-eq p0, v0, :cond_65

    packed-switch p0, :pswitch_data_ee

    aput-object v5, v4, v9

    goto :goto_6a

    :pswitch_53
    const-string v5, "getClassifierNames"

    aput-object v5, v4, v9

    goto :goto_6a

    :pswitch_58
    const-string v5, "getVariableNames"

    aput-object v5, v4, v9

    goto :goto_6a

    :pswitch_5d
    const-string v5, "getFunctionNames"

    aput-object v5, v4, v9

    goto :goto_6a

    :pswitch_62
    aput-object v7, v4, v9

    goto :goto_6a

    :cond_65
    aput-object v6, v4, v9

    goto :goto_6a

    :cond_68
    aput-object v8, v4, v9

    :goto_6a
    packed-switch p0, :pswitch_data_fa

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_93

    :pswitch_72
    const-string v5, "printScopeStructure"

    aput-object v5, v4, v3

    goto :goto_93

    :pswitch_77
    const-string v5, "definitelyDoesNotContainName"

    aput-object v5, v4, v3

    goto :goto_93

    :pswitch_7c
    aput-object v6, v4, v3

    goto :goto_93

    :pswitch_7f
    const-string v5, "recordLookup"

    aput-object v5, v4, v3

    goto :goto_93

    :pswitch_84
    aput-object v7, v4, v3

    goto :goto_93

    :pswitch_87
    aput-object v8, v4, v3

    goto :goto_93

    :pswitch_8a
    const-string v5, "getContributedClassifierIncludeDeprecated"

    aput-object v5, v4, v3

    goto :goto_93

    :pswitch_8f
    const-string v5, "getContributedClassifier"

    aput-object v5, v4, v3

    :goto_93
    :pswitch_93
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_a4

    if-eq p0, v0, :cond_a4

    packed-switch p0, :pswitch_data_126

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a9

    :cond_a4
    :pswitch_a4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a9
    throw p0

    :pswitch_data_aa
    .packed-switch 0xa
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0xa
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_39
        :pswitch_3e
        :pswitch_39
        :pswitch_3e
        :pswitch_39
        :pswitch_36
        :pswitch_3e
        :pswitch_39
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_3e
        :pswitch_39
        :pswitch_31
        :pswitch_2c
        :pswitch_36
        :pswitch_3e
        :pswitch_27
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0xa
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
    .end packed-switch

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_8f
        :pswitch_8a
        :pswitch_8a
        :pswitch_87
        :pswitch_87
        :pswitch_93
        :pswitch_84
        :pswitch_84
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_7f
        :pswitch_7f
        :pswitch_7c
        :pswitch_7c
        :pswitch_93
        :pswitch_77
        :pswitch_72
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0xa
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
        :pswitch_a4
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->h(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0xb

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_b
    return-object v0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p2, 0x2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_c
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorClass(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/b/l;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x10

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 p1, 0x11

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_19

    const/16 p2, 0x12

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_19
    return-object p1
.end method

.method public bridge synthetic e(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->i(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0xc

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_b
    return-object v0
.end method

.method public h(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/b;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x8

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->c(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_1d

    const/16 p2, 0xa

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_1d
    return-object p1
.end method

.method public i(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/b;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_c
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->b()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p2, 0x7

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->g(I)V

    :cond_16
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorScope{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.e (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$e)
.class Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic g(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_66

    const-string v2, "message"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_c
    const-string v2, "p"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_11
    const-string v2, "nameFilter"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_16
    const-string v2, "kindFilter"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_1b
    const-string v2, "location"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_20
    const-string v2, "name"

    aput-object v2, v0, v1

    :goto_24
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ThrowingScope"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_86

    const-string p0, "<init>"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_32
    const-string p0, "printScopeStructure"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_37
    const-string p0, "definitelyDoesNotContainName"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_3c
    const-string p0, "recordLookup"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_41
    const-string p0, "getContributedDescriptors"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_46
    const-string p0, "getContributedFunctions"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_4b
    const-string p0, "getContributedVariables"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_50
    const-string p0, "getContributedClassifierIncludeDeprecated"

    aput-object p0, v0, v1

    goto :goto_59

    :pswitch_55
    const-string p0, "getContributedClassifier"

    aput-object p0, v0, v1

    :goto_59
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_c
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
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
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_6
    if-nez p2, :cond_d

    const/16 p2, 0x8

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", required name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 5

    if-nez p1, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p2, 0x2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_c
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", required name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/b/l;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 p1, 0xa

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p2, 0x6

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->g(I)V

    :cond_c
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", required name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThrowingScope{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.f (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$f)
.class public Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/f0;


# direct methods
.method private static synthetic e(I)V
    .registers 11

    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_12

    if-eq p0, v3, :cond_12

    if-eq p0, v2, :cond_12

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_14

    :cond_12
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_14
    if-eq p0, v4, :cond_20

    if-eq p0, v3, :cond_20

    if-eq p0, v2, :cond_20

    if-eq p0, v1, :cond_20

    if-eq p0, v0, :cond_20

    const/4 v6, 0x3

    goto :goto_21

    :cond_20
    const/4 v6, 0x2

    :goto_21
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_7e

    const-string v9, "descriptor"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_2e
    const-string v9, "kotlinTypeRefiner"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_33
    aput-object v7, v6, v8

    :goto_35
    const-string v8, "refine"

    if-eq p0, v4, :cond_56

    if-eq p0, v3, :cond_51

    if-eq p0, v2, :cond_4c

    if-eq p0, v1, :cond_47

    if-eq p0, v0, :cond_44

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_44
    aput-object v8, v6, v4

    goto :goto_5a

    :cond_47
    const-string v7, "getBuiltIns"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_4c
    const-string v7, "getSupertypes"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_51
    const-string v7, "getParameters"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_56
    const-string v7, "getTypeParameterDescriptor"

    aput-object v7, v6, v4

    :goto_5a
    packed-switch p0, :pswitch_data_8e

    const-string v7, "<init>"

    aput-object v7, v6, v3

    goto :goto_64

    :pswitch_62
    aput-object v8, v6, v3

    :goto_64
    :pswitch_64
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_78

    if-eq p0, v3, :cond_78

    if-eq p0, v2, :cond_78

    if-eq p0, v1, :cond_78

    if-eq p0, v0, :cond_78

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7d
    throw p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2e
        :pswitch_33
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_62
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_6
    return-object p0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->d()Z

    move-result v0

    return v0
.end method

.method public f()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-nez v0, :cond_8

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_8
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->getParameters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_c
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_c
    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_c
    return-object v0
.end method
