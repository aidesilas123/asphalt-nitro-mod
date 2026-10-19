###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.h (kotlin.reflect.jvm.internal.impl.load.java.lazy.h)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;
.super Ljava/lang/Object;
.source "resolvers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.h.a (kotlin.reflect.jvm.internal.impl.load.java.lazy.h$a)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;
.super Ljava/lang/Object;
.source "resolvers.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 3

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
