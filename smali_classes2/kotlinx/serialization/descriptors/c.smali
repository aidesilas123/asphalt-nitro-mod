###### Class kotlinx.serialization.descriptors.PrimitiveKind (kotlinx.serialization.descriptors.c)
.class public abstract Lkotlinx/serialization/descriptors/c;
.super Lkotlinx/serialization/descriptors/d;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/descriptors/c$a;,
        Lkotlinx/serialization/descriptors/c$b;,
        Lkotlinx/serialization/descriptors/c$c;,
        Lkotlinx/serialization/descriptors/c$h;,
        Lkotlinx/serialization/descriptors/c$f;,
        Lkotlinx/serialization/descriptors/c$g;,
        Lkotlinx/serialization/descriptors/c$e;,
        Lkotlinx/serialization/descriptors/c$d;,
        Lkotlinx/serialization/descriptors/c$i;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\t\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000bB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\t\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/serialization/descriptors/PrimitiveKind;",
        "Lkotlinx/serialization/descriptors/SerialKind;",
        "()V",
        "BOOLEAN",
        "BYTE",
        "CHAR",
        "DOUBLE",
        "FLOAT",
        "INT",
        "LONG",
        "SHORT",
        "STRING",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$BYTE;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$DOUBLE;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$FLOAT;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$INT;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$LONG;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$SHORT;",
        "Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;",
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

    invoke-direct {p0}, Lkotlinx/serialization/descriptors/c;-><init>()V

    return-void
.end method
