###### Class kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationKt (kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationKt)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt;
.super Ljava/lang/Object;
.source "deprecation.kt"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    return-void
.end method

.method public static final getDEPRECATED_FUNCTION_KEY()Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    return-object v0
.end method
