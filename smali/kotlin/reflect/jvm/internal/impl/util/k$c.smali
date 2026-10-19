###### Class kotlin.reflect.jvm.internal.impl.util.k.c (kotlin.reflect.jvm.internal.impl.util.k$c)
.class public final Lkotlin/reflect/jvm/internal/impl/util/k$c;
.super Lkotlin/reflect/jvm/internal/impl/util/k;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/k$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/k$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/k$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/k$c;->b:Lkotlin/reflect/jvm/internal/impl/util/k$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "must have no value parameters"

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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method
