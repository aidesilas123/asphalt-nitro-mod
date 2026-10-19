###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.g (kotlin.reflect.jvm.internal.impl.load.kotlin.g)
.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$c;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->j(Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.g.a (kotlin.reflect.jvm.internal.impl.load.kotlin.g$a)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$a;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;)V
    .registers 3

    const-string v0, "elementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.g.b (kotlin.reflect.jvm.internal.impl.load.kotlin.g$b)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "internalName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$b;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.g.c (kotlin.reflect.jvm.internal.impl.load.kotlin.g$c)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$c;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    return-object v0
.end method
