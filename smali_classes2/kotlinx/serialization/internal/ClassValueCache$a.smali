###### Class kotlinx.serialization.internal.ClassValueCache.a (kotlinx.serialization.internal.ClassValueCache$a)
.class public final Lkotlinx/serialization/internal/ClassValueCache$a;
.super Ljava/lang/ClassValue;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueCache;->b()Lkotlinx/serialization/internal/ClassValueCache$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ClassValue<",
        "Lkotlinx/serialization/internal/j<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "kotlinx/serialization/internal/ClassValueCache$initClassValue$1",
        "Ljava/lang/ClassValue;",
        "Lkotlinx/serialization/internal/CacheEntry;",
        "computeValue",
        "type",
        "Ljava/lang/Class;",
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
.field final synthetic a:Lkotlinx/serialization/internal/ClassValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ClassValueCache<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/ClassValueCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/ClassValueCache<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache$a;->a:Lkotlinx/serialization/internal/ClassValueCache;

    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method
