###### Class kotlin.reflect.jvm.internal.KDeclarationContainerImpl.b.a (kotlin.reflect.jvm.internal.KDeclarationContainerImpl$b$a)
.class final Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b$a;
.super Lkotlin/jvm/internal/t;
.source "KDeclarationContainerImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b$a;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/h;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b$a;->a:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b;->c:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-interface {v0}, Lkotlin/jvm/internal/m;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$b$a;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/h;

    move-result-object v0

    return-object v0
.end method
