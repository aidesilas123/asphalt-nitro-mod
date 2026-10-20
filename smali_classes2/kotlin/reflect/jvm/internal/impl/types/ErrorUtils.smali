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
