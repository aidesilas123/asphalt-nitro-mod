###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.e (kotlin.reflect.jvm.internal.impl.resolve.constants.e)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/o<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(C)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private final c(C)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_20

    :pswitch_3
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;->e(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :pswitch_e
    const-string p1, "\\r"

    goto :goto_1f

    :pswitch_11
    const-string p1, "\\f"

    goto :goto_1f

    :pswitch_14
    const-string p1, "\\n"

    goto :goto_1f

    :pswitch_17
    const-string p1, "\\t"

    goto :goto_1f

    :pswitch_1a
    const-string p1, "\\b"

    goto :goto_1f

    :cond_1d
    const-string p1, "?"

    :goto_1f
    return-object p1

    :pswitch_data_20
    .packed-switch 0x8
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_3
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private final e(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    int-to-byte p1, p1

    if-eqz p1, :cond_21

    const/16 v0, 0xd

    if-eq p1, v0, :cond_21

    const/16 v0, 0xe

    if-eq p1, v0, :cond_21

    const/16 v0, 0xf

    if-eq p1, v0, :cond_21

    const/16 v0, 0x10

    if-eq p1, v0, :cond_21

    const/16 v0, 0x12

    if-eq p1, v0, :cond_21

    const/16 v0, 0x13

    if-eq p1, v0, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->u()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p1

    const-string v0, "module.builtIns.charType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;->c(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\\u%04X (\'%s\')"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
