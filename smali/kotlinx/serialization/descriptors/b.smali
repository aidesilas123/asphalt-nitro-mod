###### Class kotlinx.serialization.descriptors.PolymorphicKind (kotlinx.serialization.descriptors.b)
.class public abstract Lkotlinx/serialization/descriptors/b;
.super Lkotlinx/serialization/descriptors/d;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/descriptors/b$b;,
        Lkotlinx/serialization/descriptors/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/serialization/descriptors/PolymorphicKind;",
        "Lkotlinx/serialization/descriptors/SerialKind;",
        "()V",
        "OPEN",
        "SEALED",
        "Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;",
        "Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;",
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
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/d;-><init>(Lkotlin/jvm/internal/n;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlinx/serialization/descriptors/b;-><init>()V

    return-void
.end method

###### Class kotlinx.serialization.descriptors.PolymorphicKind.a (kotlinx.serialization.descriptors.b$a)
.class public final Lkotlinx/serialization/descriptors/b$a;
.super Lkotlinx/serialization/descriptors/b;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;",
        "Lkotlinx/serialization/descriptors/PolymorphicKind;",
        "()V",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/serialization/descriptors/b$a;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/b$a;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/b$a;->a:Lkotlinx/serialization/descriptors/b$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/b;-><init>(Lkotlin/jvm/internal/n;)V

    return-void
.end method

###### Class kotlinx.serialization.descriptors.PolymorphicKind.b (kotlinx.serialization.descriptors.b$b)
.class public final Lkotlinx/serialization/descriptors/b$b;
.super Lkotlinx/serialization/descriptors/b;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;",
        "Lkotlinx/serialization/descriptors/PolymorphicKind;",
        "()V",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/serialization/descriptors/b$b;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/b$b;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/b$b;->a:Lkotlinx/serialization/descriptors/b$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/b;-><init>(Lkotlin/jvm/internal/n;)V

    return-void
.end method
