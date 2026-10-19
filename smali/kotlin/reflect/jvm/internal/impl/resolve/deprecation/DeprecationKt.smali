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

###### Class kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationKt.a (kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationKt$a)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt$a;
.super Ljava/lang/Object;
.source "deprecation.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DeprecationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
