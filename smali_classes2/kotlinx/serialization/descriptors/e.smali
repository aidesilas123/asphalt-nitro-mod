###### Class kotlinx.serialization.descriptors.StructureKind (kotlinx.serialization.descriptors.e)
.class public abstract Lkotlinx/serialization/descriptors/e;
.super Lkotlinx/serialization/descriptors/d;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/descriptors/e$a;,
        Lkotlinx/serialization/descriptors/e$b;,
        Lkotlinx/serialization/descriptors/e$c;,
        Lkotlinx/serialization/descriptors/e$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/serialization/descriptors/StructureKind;",
        "Lkotlinx/serialization/descriptors/SerialKind;",
        "()V",
        "CLASS",
        "LIST",
        "MAP",
        "OBJECT",
        "Lkotlinx/serialization/descriptors/StructureKind$CLASS;",
        "Lkotlinx/serialization/descriptors/StructureKind$LIST;",
        "Lkotlinx/serialization/descriptors/StructureKind$MAP;",
        "Lkotlinx/serialization/descriptors/StructureKind$OBJECT;",
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

    invoke-direct {p0}, Lkotlinx/serialization/descriptors/e;-><init>()V

    return-void
.end method
