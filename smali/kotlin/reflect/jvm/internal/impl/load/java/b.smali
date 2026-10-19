###### Class kotlin.reflect.jvm.internal.impl.load.java.b (kotlin.reflect.jvm.internal.impl.load.java.b)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/b;
.super Lkotlin/reflect/jvm/internal/impl/load/java/k;
.source "utils.kt"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/k;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b;->a:Ljava/lang/Object;

    return-void
.end method
