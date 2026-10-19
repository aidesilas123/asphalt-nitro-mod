###### Class com.google.common.cache.CacheBuilderSpec.c (com.google.common.cache.CacheBuilderSpec$c)
.class Lcom/google/common/cache/CacheBuilderSpec$c;
.super Lcom/google/common/cache/CacheBuilderSpec$f;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$f;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .registers 6

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "concurrency level was already set to "

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Integer;

    return-void
.end method
