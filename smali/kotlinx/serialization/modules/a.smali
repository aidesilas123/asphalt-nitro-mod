###### Class kotlinx.serialization.modules.ContextualProvider (kotlinx.serialization.modules.a)
.class public abstract Lkotlinx/serialization/modules/a;
.super Ljava/lang/Object;
.source "SerializersModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/modules/a$a;,
        Lkotlinx/serialization/modules/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0006H\u00a6\u0002\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/serialization/modules/ContextualProvider;",
        "",
        "()V",
        "invoke",
        "Lkotlinx/serialization/KSerializer;",
        "typeArgumentsSerializers",
        "",
        "Argless",
        "WithTypeArguments",
        "Lkotlinx/serialization/modules/ContextualProvider$Argless;",
        "Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlinx/serialization/modules/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;)",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation
.end method

###### Class kotlinx.serialization.modules.ContextualProvider.a (kotlinx.serialization.modules.a$a)
.class public final Lkotlinx/serialization/modules/a$a;
.super Lkotlinx/serialization/modules/a;
.source "SerializersModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u001f\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0010\u0010\u000e\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00030\u000fH\u0096\u0002R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/serialization/modules/ContextualProvider$Argless;",
        "Lkotlinx/serialization/modules/ContextualProvider;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/KSerializer;)V",
        "getSerializer",
        "()Lkotlinx/serialization/KSerializer;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "invoke",
        "typeArgumentsSerializers",
        "",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/modules/a;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlinx/serialization/modules/a$a;->a:Lkotlinx/serialization/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;)",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/modules/a$a;->a:Lkotlinx/serialization/c;

    return-object p1
.end method

.method public final b()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/modules/a$a;->a:Lkotlinx/serialization/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lkotlinx/serialization/modules/a$a;

    if-eqz v0, :cond_12

    check-cast p1, Lkotlinx/serialization/modules/a$a;

    iget-object p1, p1, Lkotlinx/serialization/modules/a$a;->a:Lkotlinx/serialization/c;

    iget-object v0, p0, Lkotlinx/serialization/modules/a$a;->a:Lkotlinx/serialization/c;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/modules/a$a;->a:Lkotlinx/serialization/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class kotlinx.serialization.modules.ContextualProvider.b (kotlinx.serialization.modules.a$b)
.class public final Lkotlinx/serialization/modules/a$b;
.super Lkotlinx/serialization/modules/a;
.source "SerializersModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B6\u0012/\u0010\u0002\u001a+\u0012\u001d\u0012\u001b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0003\u00a2\u0006\u0002\u0010\tJ\u001f\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004H\u0096\u0002R:\u0010\u0002\u001a+\u0012\u001d\u0012\u001b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;",
        "Lkotlinx/serialization/modules/ContextualProvider;",
        "provider",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlin/ParameterName;",
        "name",
        "typeArgumentsSerializers",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getProvider",
        "()Lkotlin/jvm/functions/Function1;",
        "invoke",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;",
            "Lkotlinx/serialization/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;+",
            "Lkotlinx/serialization/c<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/modules/a;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlinx/serialization/modules/a$b;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;)",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/a$b;->a:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/c;

    return-object p1
.end method

.method public final b()Lkotlin/jvm/b/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;",
            "Lkotlinx/serialization/c<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/modules/a$b;->a:Lkotlin/jvm/b/l;

    return-object v0
.end method
