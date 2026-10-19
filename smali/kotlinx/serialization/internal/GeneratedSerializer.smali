###### Class kotlinx.serialization.internal.GeneratedSerializer (kotlinx.serialization.internal.GeneratedSerializer)
.class public interface abstract Lkotlinx/serialization/internal/GeneratedSerializer;
.super Ljava/lang/Object;
.source "PluginHelperInterfaces.kt"

# interfaces
.implements Lkotlinx/serialization/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008g\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002J\u0017\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0004H&\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "T",
        "Lkotlinx/serialization/KSerializer;",
        "childSerializers",
        "",
        "()[Lkotlinx/serialization/KSerializer;",
        "typeParametersSerializers",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract childSerializers()[Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract typeParametersSerializers()[Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation
.end method

###### Class kotlinx.serialization.internal.GeneratedSerializer.DefaultImpls (kotlinx.serialization.internal.GeneratedSerializer$DefaultImpls)
.class public final Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;
.super Ljava/lang/Object;
.source "PluginHelperInterfaces.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/internal/GeneratedSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/internal/GeneratedSerializer<",
            "TT;>;)[",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lkotlinx/serialization/internal/PluginHelperInterfacesKt;->a:[Lkotlinx/serialization/c;

    return-object p0
.end method
