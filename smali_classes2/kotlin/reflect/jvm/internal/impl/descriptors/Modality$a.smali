###### Class kotlin.reflect.jvm.internal.impl.descriptors.Modality.a (kotlin.reflect.jvm.internal.impl.descriptors.Modality$a)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Modality$a;
.super Ljava/lang/Object;
.source "Modality.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 3

    if-eqz p1, :cond_5

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1

    :cond_5
    if-eqz p2, :cond_a

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1

    :cond_a
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1
.end method
