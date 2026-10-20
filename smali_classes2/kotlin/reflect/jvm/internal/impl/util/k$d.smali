###### Class kotlin.reflect.jvm.internal.impl.util.k.d (kotlin.reflect.jvm.internal.impl.util.k$d)
.class public final Lkotlin/reflect/jvm/internal/impl/util/k$d;
.super Lkotlin/reflect/jvm/internal/impl/util/k;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/k$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/k$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/k$d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/k$d;->b:Lkotlin/reflect/jvm/internal/impl/util/k$d;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "must have a single value parameter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/k;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public b(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Z
    .registers 3

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method
