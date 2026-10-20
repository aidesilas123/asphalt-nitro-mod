###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver.a (kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver$a)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;
.super Lkotlin/jvm/internal/t;
.source "JavaTypeResolver.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/i;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;)Z
    .registers 4

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;->s()Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;->F()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
