###### Class kotlin.reflect.jvm.internal.impl.util.c.C0555c (kotlin.reflect.jvm.internal.impl.util.c$c)
.class final Lkotlin/reflect/jvm/internal/impl/util/c$c;
.super Lkotlin/jvm/internal/t;
.source "modifierChecks.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/util/c;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/c$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/c$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/c$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/c$c;->a:Lkotlin/reflect/jvm/internal/impl/util/c$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/Void;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/c$c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
