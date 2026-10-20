###### Class kotlinx.serialization.descriptors.PrimitiveKind.f (kotlinx.serialization.descriptors.c$f)
.class public final Lkotlinx/serialization/descriptors/c$f;
.super Lkotlinx/serialization/descriptors/c;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlinx/serialization/descriptors/PrimitiveKind$INT;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind;",
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
.field public static final a:Lkotlinx/serialization/descriptors/c$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/serialization/descriptors/c$f;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/c$f;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/c$f;->a:Lkotlinx/serialization/descriptors/c$f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/c;-><init>(Lkotlin/jvm/internal/n;)V

    return-void
.end method
