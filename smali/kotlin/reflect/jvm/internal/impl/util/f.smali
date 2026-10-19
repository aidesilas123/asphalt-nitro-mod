###### Class kotlin.reflect.jvm.internal.impl.util.f (kotlin.reflect.jvm.internal.impl.util.f)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/util/f;
.super Ljava/lang/Object;
.source "ModuleVisibilityHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/f$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.f.a (kotlin.reflect.jvm.internal.impl.util.f$a)
.class public final Lkotlin/reflect/jvm/internal/impl/util/f$a;
.super Ljava/lang/Object;
.source "ModuleVisibilityHelper.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/f$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/f$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/f$a;->a:Lkotlin/reflect/jvm/internal/impl/util/f$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 4

    const-string v0, "what"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "from"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
