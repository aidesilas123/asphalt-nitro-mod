###### Class kotlin.reflect.jvm.internal.impl.load.java.descriptors.h (kotlin.reflect.jvm.internal.impl.load.java.descriptors.h)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;
.super Ljava/lang/Object;
.source "util.kt"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/u;

.field private final b:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/u;Z)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/types/u;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;->b:Z

    return v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-object v0
.end method
