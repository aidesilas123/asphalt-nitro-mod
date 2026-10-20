###### Class com.google.common.collect.k0 (com.google.common.collect.k0)
.class Lcom/google/common/collect/k0;
.super Lcom/google/common/collect/ImmutableListMultimap;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final f:Lcom/google/common/collect/k0;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/k0;

    invoke-direct {v0}, Lcom/google/common/collect/k0;-><init>()V

    sput-object v0, Lcom/google/common/collect/k0;->f:Lcom/google/common/collect/k0;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/common/collect/k0;->f:Lcom/google/common/collect/k0;

    return-object v0
.end method
