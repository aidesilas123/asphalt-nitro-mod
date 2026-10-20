###### Class kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory.b (kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$b)
.class final Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$b;
.super Ljava/lang/Object;
.source "KotlinTypeFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/y;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/f0;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/y;Lkotlin/reflect/jvm/internal/impl/types/f0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$b;->a:Lkotlin/reflect/jvm/internal/impl/types/y;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$b;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$b;->a:Lkotlin/reflect/jvm/internal/impl/types/y;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$b;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-object v0
.end method
