###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.c (kotlin.reflect.jvm.internal.impl.resolve.scopes.c)
.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.super Ljava/lang/Object;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;,
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.c.a (kotlin.reflect.jvm.internal.impl.resolve.scopes.c$a)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:I

.field public static final b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;->x:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter$Companion;->a()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter$Companion;->c()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter$Companion;->h()I

    move-result v0

    or-int/2addr v0, v2

    not-int v0, v0

    and-int/2addr v0, v1

    sput v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$a;->a:I

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.c.b (kotlin.reflect.jvm.internal.impl.resolve.scopes.c$b)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
