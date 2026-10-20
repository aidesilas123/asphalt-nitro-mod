###### Class com.google.common.cache.CacheBuilder.b (com.google.common.cache.CacheBuilder$b)
.class Lcom/google/common/cache/CacheBuilder$b;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lcom/google/common/base/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/m<",
        "Lcom/google/common/cache/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/c;
    .registers 2

    new-instance v0, Lcom/google/common/cache/b;

    invoke-direct {v0}, Lcom/google/common/cache/b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder$b;->a()Lcom/google/common/cache/c;

    move-result-object v0

    return-object v0
.end method
