###### Class kotlin.reflect.jvm.internal.impl.types.checker.f (kotlin.reflect.jvm.internal.impl.types.checker.f)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/types/checker/f;
.super Ljava/lang/Object;
.source "NewKotlinTypeChecker.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;
    }
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    return-void
.end method


# virtual methods
.method public abstract a()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
.end method

.method public abstract c()Lkotlin/reflect/jvm/internal/impl/types/checker/d;
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.f.a (kotlin.reflect.jvm.internal.impl.types.checker.f$a)
.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;
.super Ljava/lang/Object;
.source "NewKotlinTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/types/checker/g;

.field static final synthetic b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/d$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/d$a;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/g;-><init>(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/types/checker/g;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    return-object v0
.end method
