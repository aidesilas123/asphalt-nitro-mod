###### Class kotlin.reflect.jvm.internal.impl.renderer.e.b (kotlin.reflect.jvm.internal.impl.renderer.e$b)
.class public final Lkotlin/reflect/jvm/internal/impl/renderer/e$b;
.super Lkotlin/x/b;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/renderer/e;->l0(Ljava/lang/Object;)Lkotlin/x/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/x/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/renderer/e;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/renderer/e;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/e$b;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/renderer/e$b;->b:Lkotlin/reflect/jvm/internal/impl/renderer/e;

    invoke-direct {p0, p2}, Lkotlin/x/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected beforeChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;TT;)Z"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/e$b;->b:Lkotlin/reflect/jvm/internal/impl/renderer/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/renderer/e;->j0()Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
